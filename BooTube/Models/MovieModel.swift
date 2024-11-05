//
//  MovieModel.swift
//  BooTube
//
//  Created by Aman Niranjan Chavare on 05/11/24.
//

import Foundation

struct Movie: Identifiable {
    let id: UUID
    let title: String
    let genre: String
    let imageName: String
    let description: String
    let rating: Double
    let isRecommended: Bool
}

