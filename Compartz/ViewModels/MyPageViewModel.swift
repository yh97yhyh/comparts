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
    
    func addOrder(newOrder: Order) {
        orders.append(newOrder)
    }
    
    func removeOrder(at index: Int) {
        guard orders.indices.contains(index) else {
            return
        }
        orders.remove(at: index)
    }

    func addCartItem(newCartItem: CartItem) {
        cartItems.append(newCartItem)
    }
    
    func removeCartItem(at index: Int) {
        guard cartItems.indices.contains(index) else {
            return
        }
        cartItems.remove(at: index)
    }
}
