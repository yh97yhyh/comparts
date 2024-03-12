//
//  RecommendationResponse.swift
//  Compartz
//
//  Created by 영현 on 3/12/24.
//

import Foundation

struct RecommendationItemResponse: Codable {
    let id: Int
    let product: ProductResponse
}

struct RecommendationItemsResponse: Codable {
    let recommendations: [RecommendationItemResponse]
}
