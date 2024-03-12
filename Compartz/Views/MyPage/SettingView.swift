//
//  SettingView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct SettingView: View {
    @StateObject var viewModel: MyPageViewModel
    @StateObject var authManager = AuthManager.shared

    var body: some View {
        VStack {
            List {
                Button {
                    authManager.logout()
                } label: {
                    HStack {
                        Text("로그아웃")
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.black)
                    }
                }
//                NavigationLink(destination: LoginView()) {
//                    Text("로그아웃")
//                        .foregroundColor(.black)
//                }
            }
        }
    }
}

#Preview {
    SettingView(viewModel: MyPageViewModel())
}
