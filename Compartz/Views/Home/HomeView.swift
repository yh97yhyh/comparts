//
//  HomeView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel.shared
    
    var body: some View {
        //        NavigationView {
        VStack {
            HStack {
                Text("Compartz")
                    .font(.headline)
                Spacer()
                NavigationLink(destination: CartView()) {
                    Image(systemName: "cart.fill")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
//                .buttonStyle(PlainButtonStyle())
            }
            .padding(.horizontal)
            
            ScrollView(showsIndicators: false) {
                VStack {
                    // 배너
                    BannerView(viewModel: viewModel)
                        .frame(width: nil, height: 300)
                    
                    // 래플
                    VStack {
                        HStack {
                            Text("래플 상품 👋")
                                .font(.title3)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        ProductCardView(viewModel: ProductViewModel(viewModel.raffleProduct))
                            .frame(width: 200, height: nil)
                    }
                    .padding()
                    Divider()
                        .frame(height: 10)
                    // 추천
                    VStack {
                        HStack {
                            Text("MD 추천 상품 👍")
                                .font(.title3)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(viewModel.recommendations, id: \.self) { recommendation in
                                    NavigationLink(destination: ProductDetailView(viewModel: ProductViewModel(recommendation))) {
                                        ProductCardView(viewModel: ProductViewModel(recommendation))
                                            .frame(width: 200, height: nil)
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        //        }
    }
}

#Preview {
    HomeView()
}
