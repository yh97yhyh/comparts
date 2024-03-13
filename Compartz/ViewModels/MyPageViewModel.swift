//
//  MyPageViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation
import Alamofire

class MyPageViewModel: ObservableObject {
//    static let shared = MyPageViewModel()
    
    @Published var user: User
    @Published var orders: [Order]
    @Published var cartItems: [CartItem]
    @Published var isCartItemsAllSelected: Bool
    
    private var fetchCount = 0
    
    init(_ user: User = User.MOCK_USERS[0], _ orders: [Order] = Order.MOCK_ORDERS, _ cartItems: [CartItem] = CartItem.MOCK_CARTITEMS, _ isCartItemsAllSelected: Bool = true) {
        
        self.user = user
        self.orders = orders
        self.cartItems = cartItems
        self.isCartItemsAllSelected = isCartItemsAllSelected
        
        fetchCarts()
        fetchOrders()
    }
    
    func fetchCarts() {
        let parameters = [
            "userId": user.id
        ]
        NetworkManager<[CartItemResponse]>.callGet(urlString: "/carts", parameters: parameters) { result in
            switch result {
            case .success(let cartItemsResponse):
                self.cartItems = cartItemsResponse.map { CartItem(id: $0.id, product: $0.product, count: $0.count, selected: true) }
                print("succeed to get carts!")
            case .failure(let error):
                print("failed to get carts.. \(error.localizedDescription)")
            }
        }
    }
    
    func fetchOrders() {
        let parameters = [
            "userId": user.id
        ]
        NetworkManager<OrdersResponse>.callGet(urlString: "/orders", parameters: parameters) { result in
            switch result {
            case .success(let ordersResponse):
                self.orders = ordersResponse.content.map { Order(id: $0.id, orderItems: $0.details, createdDatetime: $0.createdDatetime, amount: $0.amount) }
                print("succeed to get orders!")
            case .failure(let error):
                print("failed to get orders.. \(error.localizedDescription)")
            }
        }
    }
    
    func saveCart(productId: Int, count: Int) {
//        DispatchQueue.global().async {
            let parameters: Parameters = [
                "userId" : "\(self.user.id)",
                "productId" : "\(productId)",
                "count": "\(count)"
            ]
            NetworkManager<CartItemResponse>.callPost(urlString: "/carts", parameters: parameters) { result in
                switch result {
                case .success(let cartItem):
                    print("succeed to save cart! \(cartItem)")
                    self.fetchCarts()
                case .failure(let error):
                    print("failed to save cart.. \(error.localizedDescription)")
                }
            }
//        }
    }
    
    func updateCart(cartItemId: Int, count: Int) {
        DispatchQueue.global().async {
            let parameters: Parameters = [
                "cartItemId" : "\(cartItemId)",
                "count": "\(count)"
            ]
            NetworkManager<CartItemResponse>.callPut(urlString: "/carts", parameters: parameters) { result in
                switch result {
                case .success(let cartItem):
                    print("succeed to update cart! \(cartItem)")
                    self.fetchCarts()
                case .failure(let error):
                    print("failed to update cart.. \(error.localizedDescription)")
                }
            }
        }
    }
    
    func removeCart(cartItemId: Int) {
        DispatchQueue.global().async {
            let parameters: Parameters = [
                "cartItemId" : "\(cartItemId)"
            ]
            NetworkManager<CartItemResponse>.callDelete(urlString: "/carts", parameters: parameters) { result in
                switch result {
                case .success():
                    print("succeed to remove cart!")
                    self.fetchCarts()
                case .failure(let error):
                    print("failed to remove cart.. \(error.localizedDescription)")
                }
            }
        }
    }
    
//    func addOrder(newOrder: Order) {
//        orders.append(newOrder)
//    }
//    
//    func removeOrder(at index: Int) {
//        guard orders.indices.contains(index) else {
//            return
//        }
//        orders.remove(at: index)
//    }
//    
//    func addCartItem(newCartItem: CartItem) {
//        cartItems.append(newCartItem)
//    }
//    
//    func removeCartItem(at index: Int) {
//        guard cartItems.indices.contains(index) else {
//            return
//        }
//        cartItems.remove(at: index)
//    }
//    
//    func removeCartItem(id: Int) {
//        cartItems.removeAll { $0.id == id }
//    }
}
