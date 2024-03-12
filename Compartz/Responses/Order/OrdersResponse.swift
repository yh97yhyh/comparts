//
//  OrdersResponse.swift
//  Compartz
//
//  Created by 영현 on 3/12/24.
//

import Foundation

struct OrderDetailResponse: Codable {
    let id: Int
    let amount: Int
    let createdDatetime: String
    let userId: Int
    let details: [OrderItemResponse]
}

struct OrderResponse: Codable {
    let content: [OrderDetailResponse]
    let pageable: Pageable
    let last: Bool
    let totalPages: Int
    let totalElements: Int
    let sort: Sort
    let size: Int
    let number: Int
    let first: Bool
    let numberOfElements: Int
    let empty: Bool
}
