//
//  HomeViewModel.swift
//  BooTube
//
//  Created by Aman Niranjan Chavare on 05/11/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    // Published properties for binding
    @Published var recommendedMovies: [Movie] = []
    @Published var popularMovies: [Movie] = []

    // Simulated data fetching
    init() {
        loadMovies()
    }

    private func loadMovies() {
        // Mock movie data
        let sampleMovies = [
            Movie(id: UUID(), title: "The Haunted House", genre: "Horror", imageName: "img1", description: "A terrifying story of an abandoned house.", rating: 4.5, isRecommended: true),
            Movie(id: UUID(), title: "Ghost of the Manor", genre: "Horror", imageName: "img3", description: "An eerie tale of ghostly encounters.", rating: 4.3, isRecommended: false)
            // Add more sample data as needed
        ]
        
        // Separate recommended and popular movies
        recommendedMovies = sampleMovies.filter { $0.isRecommended }
        popularMovies = sampleMovies
    }
}

