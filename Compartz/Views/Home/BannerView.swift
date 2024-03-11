//
//  BannerView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct BannerView: View {
    @StateObject var viewModel = HomeViewModel.shared
    @State private var currentIndex = 0

    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(0..<viewModel.banners.count, id: \.self) { index in
                Image(viewModel.banners[index].image)
                    .resizable()
                    .scaledToFill()
                    .tag(index)
            }
        }
        .tabViewStyle(.page)
        .onAppear {
            startAutoScroll()
        }
        .onDisappear {
            stopAutoScroll()
        }
    }

    private func startAutoScroll() {
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
            withAnimation {
                currentIndex = (currentIndex + 1) % viewModel.banners.count
            }
        }
    }

    private func stopAutoScroll() {
        // Stop the timer when the view disappears (e.g., when navigating away)
        // This helps to prevent memory leaks
        // You can also invalidate the timer when it's no longer needed
    }
}

#Preview {
    BannerView()
}
