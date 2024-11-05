//
//  HomeView.swift
//  BooTube
//
//  Created by Aman Niranjan Chavare on 05/11/24.
//

import SwiftUI

struct HomeView: View {
    // Reference to ViewModel
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Recommended for You")
                        .font(.headline)
                        .padding(.leading)

                    // Recommended Movies
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(viewModel.recommendedMovies) { movie in
                                MovieCardView(movie: movie)
                            }
                        }
                        .padding(.horizontal)
                    }

                    Text("Popular Horror Movies")
                        .font(.headline)
                        .padding(.leading)

                    // Popular Movies
                    VStack(spacing: 16) {
                        ForEach(viewModel.popularMovies) { movie in
                            MovieListItemView(movie: movie)
                        }
                    }
                    .padding(.horizontal)
                }
                .navigationTitle("Horror Movies")
            }
        }
    }
}
