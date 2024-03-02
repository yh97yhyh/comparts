//
//  BannerView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct BannerView: View {
    @StateObject var viewModel: HomeViewModel

    var body: some View {
        TabView {
            ForEach(viewModel.banners, id: \.self) { banner in
                Image(banner.image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    BannerView(viewModel: HomeViewModel())
}
