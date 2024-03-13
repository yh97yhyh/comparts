//
//  OrderHistoryView.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import SwiftUI

struct OrderHistoryView: View {
    @EnvironmentObject var viewModel: MyPageViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                Spacer()
                
                Text("주문내역")
                    .font(.headline)
                
                Spacer()
            }
            .padding(.horizontal)
            
            ScrollView {
                HStack {
                    Text("총 \(viewModel.orders.count)개")
                        .font(.subheadline)
                    Spacer()
                }
                .padding()
                
//                Rectangle()
//                    .fill(Color(UIColor.lightGray))
//                    .frame(width: nil, height: 8)
                Divider()
                
                VStack {
//                    ForEach(viewModel.orders.indices, id: \.self) { index in
//                        OrderCardView(viewModel: OrderViewModel(viewModel.orders[index]))
//                        Divider()
//                    }
                    ForEach(viewModel.orders, id:\.self) { order in
                        OrderCardView(viewModel: OrderViewModel(order))
                        
                        Divider()
                    }
                }
            }
        }
        .setTabBarVisibility(isHidden: true)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    OrderHistoryView()
}
