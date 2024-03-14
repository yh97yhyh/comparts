//
//  ProductOrderView.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import SwiftUI

struct ProductOrderView: View {
    @StateObject var viewModel: ProductViewModel
    @EnvironmentObject var myPageViewModel: MyPageViewModel
    @State private var showingPayPopup = false
    @State private var showingCartPopup = false
    
    @State var orderCount = 1
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Text("수량")
                    .font(.headline)
                Spacer()
                
                Button {
                    orderCount += 1
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.gray)
                }
                Text("\(orderCount)")
                    .font(.headline)
                Button {
                    if orderCount > 1 {
                        orderCount -= 1
                    }
                } label: {
                    Image(systemName: "minus")
                        .foregroundColor(.gray)
                }
                
            }
            .padding(.horizontal)
            .padding(.top)
            
            HStack {
                Button {
                    myPageViewModel.order(orders: [OrderOrderItem(productId: viewModel.product.id, count: orderCount)])
                    self.showingPayPopup = true
//                    dismiss()
                } label: {
                    Text("결제하기")
                }
                .buttonStyle(MyPageButtonStyle())
                .alert(isPresented: $showingPayPopup) {
                    Alert(title: Text("결제"),
                          message: Text("성공적으로 결제되었습니다."),
                          dismissButton: .default(Text("OK")) {
                              dismiss() // 결제 알림이 닫힐 때 dismiss() 호출
                          })
                }
                
                Button {
                    myPageViewModel.saveCart(productId: viewModel.product.id, count: orderCount)
                    self.showingCartPopup = true
//                    dismiss()
                } label: {
                    Text("장바구니")
                }
                .buttonStyle(MyPageButtonStyle())
                .alert(isPresented: $showingCartPopup) {
                    Alert(title: Text("장바구니"),
                          message: Text("장바구니에 상품이 정상적으로 담겼습니다."),
                          dismissButton: .default(Text("OK")) {
                              dismiss() // 결제 알림이 닫힐 때 dismiss() 호출
                          })
                }
            }
        }
    }
}

#Preview {
    ProductOrderView(viewModel: ProductViewModel())
}
