//
//  MyPageView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct MyPageView: View {
    @StateObject var viewModel: MyPageViewModel
    
    var body: some View {
//        NavigationView {
            VStack {
                HStack {
                    Text("컴파츠")
                        .font(.headline)
                    Spacer()
                    
                    Button {
                        // cart
                    } label: {
                        Image(systemName: "cart.fill")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                    .disabled(true)
                    .opacity(0.0)
                }
                .padding(.horizontal)
                .padding(.bottom)
                
                ProfileHeaderView(viewModel: viewModel)
                    .padding(.bottom)
                
                HStack {
                    NavigationLink(destination: OrderHistoryView(viewModel: viewModel)) {
                        Text("주문내역")
                    }
                    .buttonStyle(MyPageButtonStyle())
                    
                    NavigationLink(destination: CartView(viewModel: viewModel)) {
                        Text("장바구니")
                    }
                    .buttonStyle(MyPageButtonStyle())
                    
                }
                .padding(.bottom)
                
                SettingView(viewModel: viewModel)
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
//        }
    }
}

struct MyPageButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 180, height: 32)
            .background(.white)
            .foregroundColor(.black)
            .cornerRadius(6)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(.gray, lineWidth: 1)
            )
            .opacity(configuration.isPressed ? 0.8 : 1.0)
    }
}

#Preview {
    MyPageView(viewModel: MyPageViewModel())
}
