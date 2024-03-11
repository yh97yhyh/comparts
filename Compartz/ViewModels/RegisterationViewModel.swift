//
//  RegisterationViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/4/24.
//

import Foundation
import Alamofire

class RegisterationViewModel: ObservableObject {
    static let shared = RegisterationViewModel()
    
    @Published var mail = ""
    @Published var name = ""
    @Published var password = ""
    @Published var nickname = ""
    @Published var phone = ""
    
    func createUser() {
//        try await AuthService.shared.createuser(email: email, password: password, username: username)
        let parameters: Parameters = [
            "mail": mail,
            "password": password,
            "name": name,
            "phone": phone,
            "nickName": nickname
        ]
        NetworkManager.createUser(parameters: parameters) { result in
            switch result {
            case .success:
                print("Succeed to create user!")

            case .failure:
                print("Failed to create user..")

            }
        }
        
        clear()
    }
    
    
    private func clear() {
        mail = ""
        name = ""
        password = ""
        nickname = ""
        phone = ""
    }
}
