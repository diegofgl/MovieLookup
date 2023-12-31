//
//  TrendingResults.swift
//  MovieLookup
//
//  Created by Diego Rodrigues on 10/07/23.
//

import Foundation

struct TrendingResults: Decodable {
    let page: Int
    let results: [Movie]
    let total_pages: Int
    let total_results: Int
}
