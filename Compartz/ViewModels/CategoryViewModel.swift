//
//  CategoryViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

class CategoryViewModel: ObservableObject {
    static let shared = CategoryViewModel()
    
    @Published var categories: [Category]
    @Published var products: [Product]
    
    init(_ categories: [Category] = Category.MOCK_CATEGORIES, _ products: [Product] = Product.MOCK_PRODUCTS) {
        self.categories = categories
        self.products = products
    }
}
