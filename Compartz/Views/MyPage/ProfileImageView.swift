//
//  ProfileImageView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct ProfileImageView: View {

    var body: some View {
        Image(systemName: "person.circle.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .foregroundColor(Color(.systemGray4))
//        if let profile = viewModel.user.profile {
//            Image(profile)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 100, height: 100)
//                .clipShape(Circle())
//        } else {
//            Image(systemName: "person.circle.fill")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .clipShape(Circle())
//                .foregroundColor(Color(.systemGray4))
//        }
    }
}

#Preview {
    ProfileImageView()
}
