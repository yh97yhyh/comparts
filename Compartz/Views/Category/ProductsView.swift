//
//  ProductsView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct ProductsView: View {
    @StateObject var viewModel = CategoryViewModel.shared
    @Binding var selectedCategory: Int
    
    private var filteredProducts: [Product] {
        if selectedCategory == 0 {
            return viewModel.products
        } else {
            return viewModel.products.filter { $0.categoryId == selectedCategory }
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("총 \(filteredProducts.count)개")
                    .font(.subheadline)
                Spacer()
                Button("신상품순") {
                    print("click")
                }
                .buttonStyle(FilterButtonStyle())
                .font(.subheadline)
                
            }
            .padding(.horizontal)
            
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: Array(repeating: GridItem(), count: 2), spacing: 16) {
                    ForEach(filteredProducts, id: \.self) { product in
                        NavigationLink(destination: ProductDetailView(viewModel: ProductViewModel(product))) {
                            ProductCardView(viewModel: ProductViewModel(product))
                                .frame(width: 200, height: nil)
                        }
                    }
                }
                .padding()
                
            }
        }
    }
}

#Preview {
    ProductsView(selectedCategory: .constant(0))
}
