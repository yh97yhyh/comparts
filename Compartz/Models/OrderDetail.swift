//
//  OrderDetail.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

struct OrderDetail: Identifiable, Codable, Hashable {
    var id: Int
    var product: Product
    var count: Int
}

extension OrderDetail {
    
}
