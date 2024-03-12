//
//  RafflesResponse.swift
//  Compartz
//
//  Created by 영현 on 3/12/24.
//

import Foundation

struct RafflesResponse: Codable {
    let id: Int
    let raffles: [ProductResponse]
}
