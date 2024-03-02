//
//  ContentView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var homeViewModel = HomeViewModel()
    var body: some View {
        VStack {
            MainTabView(homeViewModel: homeViewModel)
        }
    }
}

#Preview {
    ContentView()
}
