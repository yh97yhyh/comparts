//
//  CartItem.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

struct CartItem: Identifiable, Codable, Hashable {
    var id: Int
    var product: Product
    var count: Int
    var selected: Bool
}

extension CartItem {
    static let MOCK_CARTITEMS: [CartItem] = [
        .init(id: 0, product: Product.MOCK_PRODUCT_0, count: 1, selected: true),
        .init(id: 1, product: Product.MOCK_PRODUCT_1, count: 1, selected: true),
        .init(id: 2, product: Product.MOCK_PRODUCT_2, count: 1, selected: false),
    ]
}
