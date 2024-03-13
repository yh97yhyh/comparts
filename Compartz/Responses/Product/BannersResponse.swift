//
//  BannerResponse.swift
//  Compartz
//
//  Created by 영현 on 3/12/24.
//

import Foundation

//struct BannerResponse: Codable {
//    let id: Int
//    let name: String
//    let image: String
//}

struct BannersResponse: Codable {
    let baners: [Banner]
}
