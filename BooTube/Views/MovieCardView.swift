//
//  MovieCardView.swift
//  BooTube
//
//  Created by Aman Niranjan Chavare on 05/11/24.
//

import SwiftUI

struct MovieCardView: View {
    let movie: Movie

    var body: some View {
        VStack {
            Image(movie.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 200)
                .cornerRadius(10)
                .clipped()
            
            Text(movie.title)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .frame(width: 150)
        .shadow(radius: 5)
    }
}
