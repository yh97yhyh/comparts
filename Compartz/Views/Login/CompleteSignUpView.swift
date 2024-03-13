//
//  CompleteSignUpView.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @StateObject var viewModel = RegisterationViewModel.shared
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            
            Text("Compartz 가입을 환영합니다 🥳")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("회원가입 버튼을 누른 후 컴파츠 앱을 시작하세요!")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                viewModel.createUser()
            } label: {
                Text("회원가입 완료")
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
    CompleteSignUpView()
}
