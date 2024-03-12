//
//  MainTabView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct MainTabView: View {
    @StateObject var authManager = AuthManager.shared
    @State private var selectedIndex = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.clear
                    .ignoresSafeArea()
                TabView(selection: $selectedIndex) {
                    HomeView()
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
                    MyPageView(viewModel: getMyPageViewModel())
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
        }
    }
    
    func getMyPageViewModel() -> MyPageViewModel {
        if let currentUser = authManager.currentUser {
            return MyPageViewModel(currentUser)
        } else {
            return MyPageViewModel()
        }
    }
                
}

#Preview {
    MainTabView()
}
