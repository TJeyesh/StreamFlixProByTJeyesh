//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by T.Jeyesh on 07/10/2025.
//

import Foundation



struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}


struct VideoElement: Codable {
    let id: IdVideoElement
}


struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
