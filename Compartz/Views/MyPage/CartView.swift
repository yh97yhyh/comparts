//
//  CartView.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import SwiftUI

struct CartView: View {
    @StateObject var viewModel = MyPageViewModel.shared
    @Environment(\.dismiss) private var dismiss
    @State var isAll = false

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
                
                Text("장바구니")
                    .font(.headline)
                
                Spacer()
            }
            .padding(.horizontal)
            
            HStack {
                Toggle("전체선택", isOn: $isAll)
                    .toggleStyle(CheckboxStyle())
                
                Text("( / \(viewModel.cartItems.count))")
                
                Spacer()
                
                Button("선택삭제") {
                    print("click")
                }
                .buttonStyle(FilterButtonStyle())
            }
            .padding(.horizontal)
            .padding(.top)
            
            Divider()
            
            ScrollView {
                
            }
            
            Button {
                print("click")
            } label: {
                Text("총 0원 결제하기")
            }
            .buttonStyle(ProductButtonStyle(height: 56, isMaxWidth: true))
        }
        .setTabBarVisibility(isHidden: true)
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {

        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(configuration.isOn ? .blue : .gray)
//                .font(.system(size: 20, weight: .regular, design: .default))
                configuration.label
        }
        .onTapGesture { configuration.isOn.toggle() }

    }
}

#Preview {
    CartView()
}
