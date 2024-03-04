//
//  SettingView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct SettingView: View {
    @StateObject var viewModel = MyPageViewModel.shared

    var body: some View {
        VStack {
            List {
                NavigationLink(destination: LoginView()) {
                    Text("로그아웃")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    SettingView()
}
