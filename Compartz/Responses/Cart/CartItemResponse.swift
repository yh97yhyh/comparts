//
//  CartResponse.swift
//  Compartz
//
//  Created by 영현 on 3/12/24.
//

import Foundation

struct CartItemResponse: Codable {
    let id: Int
    let count: Int
    let product: ProductResponse
}
