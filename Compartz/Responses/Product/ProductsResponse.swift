//
//  ProductsResponse.swift
//  Compartz
//
//  Created by 영현 on 3/12/24.
//

import Foundation

struct ProductsResponse: Codable {
    let content: [ProductResponse]
    let pageable: Pageable
    let last: Bool
    let totalElements: Int
    let totalPages: Int
    let size: Int
    let first: Bool
    let number: Int
    let sort: Sort
    let numberOfElements: Int
    let empty: Bool
}

struct Pageable: Codable {
    let sort: Sort
    let offset: Int
    let pageNumber: Int
    let pageSize: Int
    let paged: Bool
    let unpaged: Bool
}

struct Sort: Codable {
    let empty, sorted, unsorted: Bool
}
