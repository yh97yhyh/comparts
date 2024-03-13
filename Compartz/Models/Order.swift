//
//  Order.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

struct OrderOrderItem: Codable, Hashable {
    let productId: Int
    let count: Int
    
    func toDictionary() -> [String: Any] {
        return [
            "productId": productId,
            "count": count
        ]
    }
}

struct OrderItem: Identifiable, Codable, Hashable  {
    let id: Int
    let count: Int
    let product: Product
}

struct Order: Identifiable, Codable, Hashable {
    var id: Int
    var orderItems: [OrderItem]
    var createdDatetime: String
    var amount: Int
}

extension Order {
    static let MOCK_ORDER_1: Order = .init(id: 0, orderItems: [OrderItem(id: 1, count: 1, product: Product.MOCK_PRODUCT_0), OrderItem(id: 2, count: 1, product: Product.MOCK_PRODUCT_1)], createdDatetime: "2024-03-02 19:10:21", amount: Product.MOCK_PRODUCT_0.price + Product.MOCK_PRODUCT_1.price)
    
    static let MOCK_ORDER_2: Order = .init(id: 0, orderItems: [OrderItem(id: 1, count: 1, product: Product.MOCK_PRODUCT_2)], createdDatetime: "2024-03-02 19:10:21", amount: Product.MOCK_PRODUCT_2.price)
    
    static let MOCK_ORDERS: [Order] = [
        MOCK_ORDER_1, MOCK_ORDER_2
    ]
    
    //    static let MOCK_ORDER: Order = .init(id: 0,
    //                                         products: [Product.MOCK_PRODUCT_0, Product.MOCK_PRODUCT_1],
    //                                         createdDatetime: "2024-03-02 19:10:21",
    //                                         amount: Product.MOCK_PRODUCT_0.price + Product.MOCK_PRODUCT_1.price)
    
    //    static let MOCK_ORDERS: [Order] = [
    //        .init(id: 0,
    //              products: [Product.MOCK_PRODUCT_0, Product.MOCK_PRODUCT_1],
    //              createdDatetime: "2024-03-02 19:10:21",
    //              amount: Product.MOCK_PRODUCT_0.price + Product.MOCK_PRODUCT_1.price),
    //        .init(id: 1,
    //              products: [Product.MOCK_PRODUCT_2],
    //              createdDatetime: "2024-03-02 18:51:12",
    //              amount: Product.MOCK_PRODUCT_2.price)
    //    ]
}
