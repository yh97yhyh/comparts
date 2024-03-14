//
//  OrderCardView.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import SwiftUI
import Kingfisher

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
                ForEach(viewModel.order.orderItems, id:\.self) { orderItem in
                    HStack {
//                        ProductCardView(viewModel: ProductViewModel(orderItem.product))
//                            .frame(width: 120, height: nil)
//                            .padding(.trailing, 32)
                        
                        KFImage(URL(string: "http://localhost:8080/images/\(orderItem.product.image)"))
                            .resizable()
                            .frame(width: 100, height: 100)
                            .scaledToFill()
                            .clipped()
                            .padding(.trailing, 48)

                        
                        VStack(alignment: .leading) {
                            Text(orderItem.product.name)
                                .foregroundColor(.gray)
                                .fontWeight(.semibold)
//                                .font(.caption)
                            Text("\(orderItem.product.price) 원")
                                .font(.subheadline)
                            Text("\(orderItem.count) 개")
                                .font(.subheadline)

                        }
                        
                        Spacer()
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
