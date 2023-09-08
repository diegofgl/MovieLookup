//
//  TrendingCard.swift
//  MovieLookup
//
//  Created by Diego Rodrigues on 10/07/23.
//

import Foundation
import SwiftUI

struct TrendingCard: View {
    
    let trendingItem: Movie
    
    var body: some View {
        ZStack(alignment: .bottom){
            AsyncImage(url: trendingItem.backdropURL) { image in image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 340, height: 200)
            } placeholder: {
                    Rectangle().fill(Color(red:61/255,green:61/255,blue:88/255))
                        .frame(width: 340, height: 200)
            }
            
            VStack {
                HStack {
                    Text(trendingItem.title)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                    Spacer()
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                }
                HStack {
                  Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(.yellow)
                    Text(String(format: "%.1f", trendingItem.vote_average))
                    Spacer()
                }
                .foregroundColor(.yellow)
                .fontWeight(.heavy)
            }
            .padding()
            .background(Color(.gray))
        }
        .cornerRadius(10)
    }
}
