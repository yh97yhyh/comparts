//
//  OrderCardView.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import SwiftUI

struct OrderCardView: View {
    @StateObject var viewModel: OrderViewModel

    var body: some View {
        VStack {
            HStack {
                Text(viewModel.order.createdDatetime)
                    .font(.subheadline)
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
            
            VStack(alignment: .leading) {
                ForEach(viewModel.order.products, id:\.self) { product in
                    HStack {
                        ProductCardView(viewModel: ProductViewModel(product))
                            .frame(width: 150, height: nil)
                        
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text(product.name)
                                .font(.caption)
                                .fontWeight(.semibold)
                            Text("\(product.price) 원")
                                .font(.footnote)
                        }
                    }
                }
                
                Text("결제금액 : \(viewModel.order.amount) 원")
            }
            .padding()
        }
//        .background(.white)
//        .cornerRadius(10)
//        .border(.gray, width: 1)
    }
}

#Preview {
    OrderCardView(viewModel: OrderViewModel())
}
