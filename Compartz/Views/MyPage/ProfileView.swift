//
//  ProfileView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = MyPageViewModel.shared
    
    var body: some View {
        VStack {
            HStack {
                ProfileImageView()
                
                VStack(alignment: .leading) {
                    Text("\(viewModel.user.nickname) 님")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text(viewModel.user.userId)
                        .font(.footnote)
                    Text(viewModel.user.phone)
                        .font(.footnote)
                }
                .padding(.leading, 32)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ProfileView()
}
