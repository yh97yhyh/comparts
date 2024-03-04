//
//  Order.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

struct Order: Identifiable, Codable, Hashable {
    var id: Int
    var products: [Product]
    var createdDatetime: String
    var totalPrice: Int
}

extension Order {
    static let MOCK_ORDER: Order = .init(id: 0,
                                         products: [Product.MOCK_PRODUCT_0, Product.MOCK_PRODUCT_1],
                                         createdDatetime: "2024-03-02 19:10:21",
                                         totalPrice: Product.MOCK_PRODUCT_0.price + Product.MOCK_PRODUCT_1.price)
    
    static let MOCK_ORDERS: [Order] = [
        .init(id: 0,
              products: [Product.MOCK_PRODUCT_0, Product.MOCK_PRODUCT_1],
              createdDatetime: "2024-03-02 19:10:21",
              totalPrice: Product.MOCK_PRODUCT_0.price + Product.MOCK_PRODUCT_1.price),
        .init(id: 1,
              products: [Product.MOCK_PRODUCT_2],
              createdDatetime: "2024-03-02 18:51:12",
              totalPrice: Product.MOCK_PRODUCT_2.price)
    ]
}
