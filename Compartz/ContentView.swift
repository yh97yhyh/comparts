//
//  ContentView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var authManager = AuthManager.shared
    
    var body: some View {
        VStack {
            if authManager.isLoggedIn {
                MainTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
