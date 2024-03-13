//
//  CategoryViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation
import Alamofire

class CategoryViewModel: ObservableObject {
    static let shared = CategoryViewModel()
    
    @Published var categories: [Category]
    @Published var selectedCategory = 0 {
        didSet {
            page = 1
            isCanAddProducts = true
            fetchProducts()
        }
    }
    @Published var products: [Product]
    @Published var isCanAddProducts = true
    @Published var totalCount = 0
    
    private var fetchCount = 0
    private var page = 1
    private var totalPages = 0
    
    @Published var isFetching = true
    
    init(_ categories: [Category] = Category.MOCK_CATEGORIES, _ products: [Product] = Product.MOCK_PRODUCTS) {
        self.categories = []
        self.products = []
        
        fetchCategories()
        fetchProducts()
    }
    
    func fetchCategories() {
        NetworkManager<[Category]>.callGet(urlString: "/products/categories") { result in
            switch result {
            case .success(let categories):
                self.categories = categories
                self.toggleFetch()
                print("succeed to get categories!")
            case .failure(let error):
                print("failed to get categories.. \(error.localizedDescription)")
            }
        }
    }
    
    func fetchProducts() {
        var parameters = Parameters()
        if selectedCategory != 0 {
            parameters = [
                "categoryId": selectedCategory
            ]
        }
        NetworkManager<ProductsResponse>.callGet(urlString: "/products", parameters: parameters) { result in
            switch result {
            case .success(let productsResponse):
                self.products = productsResponse.content
                self.totalPages = productsResponse.totalPages
                self.totalCount = productsResponse.totalElements
                print("succeed to get products!")
            case .failure(let error):
                print("failed to get products.. \(error.localizedDescription)")
            }
        }
    }
    
    func addProducts() {
        if !isCanAddProducts {
            return
        }
        
        var parameters = Parameters()
        if selectedCategory != 0 {
            parameters  = [
                "page": page,
                "categoryId": selectedCategory
            ]
        } else {
            parameters = [
                "page": page
            ]
        }
        
        NetworkManager<ProductsResponse>.callGet(urlString: "/products", parameters: parameters) { result in
            switch result {
            case .success(let productsResponse):
                self.isCanAddProducts = !productsResponse.last
                self.products += productsResponse.content
                print("succeed to add products \(self.page)page!")
                self.page += 1
            case .failure(let error):
                print("failed to add products \(self.page)page.. \(error.localizedDescription)")
            }
        }
    }
    
    func toggleFetch() {
        self.fetchCount += 1
//        print("categoryviewmodel fetchcount : \(fetchCount)")
        if self.fetchCount >= 1 {
            self.isFetching = false
            self.fetchCount = 0
        }
    }
}
