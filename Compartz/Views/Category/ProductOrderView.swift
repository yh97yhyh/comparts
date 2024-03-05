//
//  ProductOrderView.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import SwiftUI

struct ProductOrderView: View {
    @StateObject var viewModel: ProductViewModel
    @State var orderCount = 0
    
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
                    if orderCount > 0 {
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
                    
                } label: {
                    Text("결제하기")
                }
                .buttonStyle(MyPageButtonStyle())
                Button {
                    
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
