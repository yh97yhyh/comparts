//
//  CategoryView.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import SwiftUI

struct CategoryView: View {
    @StateObject var viewModel = CategoryViewModel.shared
    @State private var selectedCategory: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button {
                        // back
                    } label: {
                        Image(systemName: "chevron.backward")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    Button {
                        // cart
                    } label: {
                        Image(systemName: "cart.fill")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                }
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        HStack(spacing: 20) {
                            Button("전체") {
                                selectedCategory = 0
                                print("click")
                            }
                            .buttonStyle(CategoryButtonStyle(isSelected: selectedCategory == 0))
                            ForEach(viewModel.categories, id: \.self) { category in
                                Button(category.name) {
                                    selectedCategory = category.id
                                    print("click")
                                }
                                .buttonStyle(CategoryButtonStyle(isSelected: selectedCategory == category.id))
                            }
                        }
                    }
                    .padding()
                }
                Divider()
                    .padding(.bottom)
                
                ProductsView(selectedCategory: $selectedCategory)
            }
        }
    }
}

struct FilterButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .cornerRadius(8)
    }
}

struct CategoryButtonStyle: ButtonStyle {
    var isSelected: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(isSelected ? .black : .gray)
            .cornerRadius(8)
    }
}

#Preview {
    CategoryView()
}
