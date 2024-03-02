//
//  ProductCardView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct ProductCardView: View {
    @StateObject var viewModel: ProductViewModel
    
    var body: some View {
        VStack {
            Image(viewModel.product.image)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                HStack {
                    Text(viewModel.product.name)
                        .foregroundColor(.gray)
                        .font(.body)
//                        .fontWeight(.semibold)
                        .lineLimit(1)
                    Spacer()
                }
                Text("\(viewModel.product.price)")
                    .font(.body)
                    .fontWeight(.semibold)
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(10)
//        .border(Color.gray, width: 1)
    }
}

#Preview {
    ProductCardView(viewModel: ProductViewModel())
}
