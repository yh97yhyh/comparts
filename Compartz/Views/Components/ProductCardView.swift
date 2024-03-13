//
//  ProductCardView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI
import Kingfisher

struct ProductCardView: View {
    @StateObject var viewModel: ProductViewModel
    
    var body: some View {
        VStack {
//            Image(viewModel.product.image)
//                .resizable()
//                .scaledToFill()
//                .clipped()
            KFImage(URL(string: "http://localhost:8080/images/\(viewModel.product.image)"))
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
                    .lineLimit(1)
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
