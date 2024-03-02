//
//  MainTabView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    @StateObject var homeViewModel: HomeViewModel
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            HomeView(viewModel: homeViewModel)
                .onAppear {
                    selectedIndex = 0
                }
                .tabItem { Image(systemName: "house") }
                .tag(0)
            CategoryView()
                .onAppear {
                    selectedIndex = 1
                }
                .tabItem { Image(systemName: "list.dash") }
                .tag(1)
            MyPageView()
                .onAppear {
                    selectedIndex = 2
                }
                .tabItem { Image(systemName: "person.fill") }
                .tag(2)
        }
        .accentColor(.black)
    }
                
}

#Preview {
    MainTabView(homeViewModel: HomeViewModel())
}
