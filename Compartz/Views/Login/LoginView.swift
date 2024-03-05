//
//  LoginView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct LoginView: View {
    @State var id: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Compartz")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack {
                    TextField("Enter your email", text: $id)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                    
                    SecureField("Enter your password", text: $password)
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                }
                .padding(.bottom)
                
                Button {
                    
                } label: {
                    Text("로그인")
                }
                .buttonStyle(ProductButtonStyle(width: 350, height: 44))
                .padding(.bottom)
                
                HStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width / 2 - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width / 2 - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                Spacer()
                Divider()
                
                NavigationLink(destination: AddEmailView()) {
                    Text("계정이 없으신가요?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Text("회원가입")
                        .font(.footnote)
                        .foregroundColor(.black)
                }
                .padding(.vertical, 16)
                
//                Button {
//                    
//                } label: {
//                    HStack(spacing: 3) {
//                        Text("계정이 없으신가요?")
//                        Text("회원가입")
//                            .fontWeight(.semibold)
//                    }
//                    .font(.footnote)
//                    .foregroundColor(.black)
//                }
//                .padding(.vertical, 16)
                
            }
//            .padding()
        }
    }
}

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}


#Preview {
    LoginView()
}
