//
//  OrderViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import Foundation

class OrderViewModel: ObservableObject {
    @Published var order: Order
    
    init(_ order: Order = Order.MOCK_ORDER_1) {
        self.order = order
    }
}
