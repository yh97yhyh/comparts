//
//  CartCardView.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import SwiftUI

struct CartCardView: View {
    @EnvironmentObject var myPageViewModel: MyPageViewModel
    @StateObject var viewModel: CartViewModel
    @Binding var isSelected: Bool
    @Binding var count: Int
//    var cartItemId: Int
//    var index: Int
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    print("\(index)")
//                    myPageViewModel.removeCartItem(at: index)
//                    myPageViewModel.removeCartItem(id: viewModel.cart.id)
                } label: {
                    Image(systemName: "xmark")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
            .padding(.top)
            
            HStack {
                Toggle("", isOn: $isSelected)
                    .toggleStyle(CircleCheckboxStyle())
                
                ProductCardView(viewModel: ProductViewModel(viewModel.cart.product))
                    .frame(width: 150, height: nil)
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text(viewModel.cart.product.name)
                        .font(.caption)
                        .fontWeight(.semibold)
                    Text("\(viewModel.cart.product.price) 원")
                        .font(.footnote)
                        .padding(.bottom, 8)
                    
                    HStack {
                        Button {
                            count += 1
                        } label: {
                            Image(systemName: "plus")
                                .foregroundColor(.gray)
                        }
                        Text("\(count)")
                            .font(.headline)
                        Button {
                            if count > 0 {
                                count -= 1
                                if count == 0 {
                                    isSelected = false
                                }
                            }
                        } label: {
                            Image(systemName: "minus")
                                .foregroundColor(.gray)
                        }
                    }
                }
                
            }
            .padding(.horizontal)
        }
    }
}

struct CircleCheckboxStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle" : "circle")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .black : .gray)
            //                .font(.system(size: 20, weight: .regular, design: .default))
            configuration.label
        }
        .onTapGesture { configuration.isOn.toggle() }
        
    }
}

#Preview {
    CartCardView(viewModel: CartViewModel(), isSelected: .constant(true), count: .constant(1))
}
