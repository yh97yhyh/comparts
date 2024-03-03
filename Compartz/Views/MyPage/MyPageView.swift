//
//  MyPageView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct MyPageView: View {
    @StateObject var viewModel = MyPageViewModel.shared
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Compartz")
                        .font(.headline)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom)
                
                ProfileHeaderView()
                    .padding(.bottom)
                
                HStack {
                    Button {
                        print("click")
                    } label: {
                        Text("주문내역")
                    }
                    .buttonStyle(MyPageButtonStyle())
                    
                    Button {
                        print("click")
                    } label: {
                        Text("장바구니")
                    }
                    .buttonStyle(MyPageButtonStyle())
                    
                }
                .padding(.bottom)
                
                SettingView()
            }
        }
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
    MyPageView()
}
