//
//  MovieListItemView.swift
//  BooTube
//
//  Created by Aman Niranjan Chavare on 05/11/24.
//

import SwiftUI

struct MovieListItemView: View {
    let movie: Movie

    var body: some View {
        HStack {
            Image(movie.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 100)
                .cornerRadius(8)
                .clipped()

            VStack(alignment: .leading, spacing: 5) {
                Text(movie.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(movie.genre)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text("Rating: \(movie.rating, specifier: "%.1f")")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding(.vertical, 8)
    }
}

