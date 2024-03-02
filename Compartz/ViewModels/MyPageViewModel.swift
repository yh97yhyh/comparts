//
//  MyPageViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

class MyPageViewModel: ObservableObject {
    static let shared = MyPageViewModel()
    
    @Published var user: User
    @Published var orders: [Order]
    @Published var cartItems: [CartItem]
    
    init(_ user: User = User.MOCK_USERS[0], _ orders: [Order] = Order.MOCK_ORDERS, _ cartItems: [CartItem] = CartItem.MOCK_CARTITEMS) {
        self.user = user
        self.orders = orders
        self.cartItems = cartItems
    }
}
