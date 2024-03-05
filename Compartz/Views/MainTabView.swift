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
        NavigationView {
            ZStack {
                Color.clear
                    .ignoresSafeArea()
                TabView(selection: $selectedIndex) {
                    HomeView(viewModel: homeViewModel)
                        .onAppear {
                            selectedIndex = 0
                        }
                        .tabItem {
                            Image(systemName: "house")
                            Text("홈")
                        }
                        .tag(0)
                    CategoryView()
                        .onAppear {
                            selectedIndex = 1
                        }
                        .tabItem {
                            Image(systemName: "list.dash")
                            Text("카테고리")
                        }
                        .tag(1)
                    MyPageView()
                        .onAppear {
                            selectedIndex = 2
                        }
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("마이페이지")
                        }
                        .tag(2)
                }
                .accentColor(.black)
            }
//            LoginView()
        }
    }
                
}

#Preview {
    MainTabView(homeViewModel: HomeViewModel())
}
