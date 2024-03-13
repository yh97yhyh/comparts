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
                    dismiss()
                } label: {
                    Text("결제하기")
                }
                .buttonStyle(MyPageButtonStyle())
                Button {
                    myPageViewModel.saveCart(productId: viewModel.product.id, count: orderCount)
                    dismiss()
                } label: {
                    Text("장바구니")
                }
                .buttonStyle(MyPageButtonStyle())
            }
        }
    }
}

#Preview {
    ProductOrderView(viewModel: ProductViewModel())
}
