//
//  CreateNicknamePhoneView.swift
//  Compartz
//
//  Created by 영현 on 3/12/24.
//

import SwiftUI

struct CreateNicknamePhoneView: View {
    @StateObject var viewModel = RegisterationViewModel.shared
    @Environment(\.dismiss) var dismiss
    
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
            }
            .padding(.horizontal)
            //            .padding(.bottom)
            
            Text("닉네임을 입력해 주세요.")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            
            //            Text("You'll use this username to sign in to your account")
            //                .font(.footnote)
            //                .foregroundColor(.gray)
            //                .multilineTextAlignment(.center)
            //                .padding(.horizontal, 24)
            
            TextField("Nickname", text: $viewModel.nickname)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.bottom)
                .autocorrectionDisabled()
            
            Text("핸드폰 번호를 입력해 주세요.")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top)
            
            //            Text("You'll use this username to sign in to your account")
            //                .font(.footnote)
            //                .foregroundColor(.gray)
            //                .multilineTextAlignment(.center)
            //                .padding(.horizontal, 24)
            
            TextField("Phone", text: $viewModel.phone)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .keyboardType(.numberPad)
                .autocorrectionDisabled()
            
            NavigationLink {
                CompleteSignUpView()
            } label: {
                Text("다음")
            }
            .buttonStyle(ProductButtonStyle(width: 350, height: 44))
            .padding(.vertical)
            
            Spacer()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
}

#Preview {
    CreateNicknamePhoneView()
}
