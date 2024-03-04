//
//  CartViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import Foundation

class CartViewModel: ObservableObject {
    @Published var cart: CartItem
    
    init(_ cart: CartItem = CartItem.MOCK_CARTITEM) {
        self.cart = cart
    }
}
