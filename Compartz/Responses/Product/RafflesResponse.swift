//
//  RafflesResponse.swift
//  Compartz
//
//  Created by 영현 on 3/12/24.
//

import Foundation

struct Raffle: Codable {
    let id: Int
    let product: Product
}

struct RafflesResponse: Codable {
    let raffles: [Raffle]
}
