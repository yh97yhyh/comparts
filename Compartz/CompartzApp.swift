//
//  CompartzApp.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

@main
struct CompartzApp: App {
    @StateObject var authManager = AuthManager.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authManager)
        }
    }
}
