//
//  LoginViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import Foundation
import Alamofire

class LoginViewModel: ObservableObject {
    static let shared = LoginViewModel()
    
    @Published var mail = ""
    @Published var password = ""
    
    func login() {
        let parameters: Parameters = [
            "mail": mail,
            "password": password,
        ]
        
        AuthManager.shared.login(parameters: parameters)
    
        clear()
    }
    
    private func clear() {
        mail = ""
        password = ""
    }
}
