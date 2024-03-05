//
//  CreatePasswordView.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import SwiftUI

struct CreatePasswordView: View {
    @StateObject var viewModel = RegisterationViewModel.shared
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    // back
                } label: {
                    Image(systemName: "chevron.backward")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                Spacer()
            }
            .padding(.horizontal)
//            .padding(.bottom)
            
            Text("비밀번호를 입력해 주세요.")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $viewModel.password)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
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
    CreatePasswordView()
}
