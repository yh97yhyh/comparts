//
//  HomeViewModel.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    static let shared = HomeViewModel()
    
    @Published var banners: [Banner]
    @Published var raffleProduct: Product
    @Published var recommendations: [Product]
    @Published var isFetching = true
    private var fetchCount = 0

    init(_ banners: [Banner] = Banner.MOCK_BANNERS, _ raffleProduct: Product = Product.MOCK_PRODUCT_2, _ recommendations: [Product] = [Product.MOCK_PRODUCT_0, Product.MOCK_PRODUCT_1, Product.MOCK_PRODUCT_2]) {
        self.banners = banners
        self.raffleProduct = raffleProduct
        self.recommendations = recommendations
        
        fetchBanners()
        fetchRaffles()
        fetchRecommendations()
    }
    
    func fetchBanners() {
        NetworkManager<[Banner]>.callGet(urlString: "/banners") { result in
            switch result {
            case .success(let banners):
                self.banners = banners
                self.toggleFetch()
                print("succeed to get banners!")
            case .failure(let error):
                print("failed to get banners.. \(error.localizedDescription)")
            }
        }
    }
    
    func fetchRaffles() {
        NetworkManager<Raffle>.callGet(urlString: "/products/raffles") { result in
            switch result {
            case .success(let raffle):
                self.raffleProduct = raffle.product
                self.toggleFetch()
                print("succeed to get raffles!")
            case .failure(let error):
                print("failed to get raffles.. \(error.localizedDescription)")
            }
        }
    }
    
    func fetchRecommendations() {
        NetworkManager<[Recommendation]>.callGet(urlString: "/products/recommends") { result in
            switch result {
            case .success(let recommendations):
                self.recommendations = recommendations.map { $0.product }
                self.toggleFetch()
                print("succeed to get recommendations!")
            case .failure(let error):
                print("failed to get recommendations.. \(error.localizedDescription)")
            }
        }
    }
    
    func toggleFetch() {
        self.fetchCount += 1
//        print("homeviewmodel fetchcount : \(fetchCount)")
        if self.fetchCount >= 3 {
            self.isFetching = false
            self.fetchCount = 0
        }
    }
}
