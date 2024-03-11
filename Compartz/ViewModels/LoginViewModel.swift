//
//  LoginViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    static let shared = LoginViewModel()
    
    @Published var mail = ""
    @Published var password = ""
    
    func SignIn() async throws {
//        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
