//
//  RegisterationViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import Foundation

class RegisterationViewModel: ObservableObject {
    static let shared = RegisterationViewModel()
    
    @Published var email = ""
    @Published var username = ""
    @Published var password = ""
    
    func createUser() async throws {
//        try await AuthService.shared.createuser(email: email, password: password, username: username)
        
        email = ""
        username = ""
        password = ""
    }
    
}
