//
//  HomeViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    static let shared = HomeViewModel()
    
    @Published var banners: [Banner]
    @Published var raffleProduct: Product
    @Published var recommendations: [Product]

    init(_ banners: [Banner] = Banner.MOCK_BANNERS, _ raffleProduct: Product = Product.MOCK_PRODUCT_2, _ recommendations: [Product] = [Product.MOCK_PRODUCT_0, Product.MOCK_PRODUCT_1, Product.MOCK_PRODUCT_2]) {
        self.banners = banners
        self.raffleProduct = raffleProduct
        self.recommendations = recommendations
    }

}
