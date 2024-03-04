//
//  ProductViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

class ProductViewModel: ObservableObject {
    @Published var product: Product
    
    init(_ product: Product = Product.MOCK_PRODUCT_2) {
        self.product = product
    }
}
