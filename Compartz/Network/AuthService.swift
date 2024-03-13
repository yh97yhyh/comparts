//
//  AuthService.swift
//  Compartz
//
//  Created by 영현 on 3/12/24.
//

import Foundation

class AuthService {
    static let shared = AuthService()
    
    @Published var isLoggedIn = false
    @Published var user: User?
    var accessToken = ""
    
    init() {
        loadUserData()
    }
    
    func login(mail: String, password: String) {
        
    }
    
    func createUser(mail: String, password: String, name: String, nickname: String, phone: String) {
        
    }
    
    func loadUserData() {
        
    }
    
    func signout() {
        
    }
}
