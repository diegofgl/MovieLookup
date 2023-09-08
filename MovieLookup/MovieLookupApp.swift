//
//  MovieLookupApp.swift
//  MovieLookup
//
//  Created by Diego Rodrigues on 04/07/23.
//

import SwiftUI

import SwiftUI

@main
struct MovieLookupApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                DiscoverView()
                    .tabItem {
                        Image(systemName: "popcorn")
                    }
                Text("Favs")
                    .tabItem {
                        Image(systemName: "heart.fill")
                    }
                Text("tickets")
                    .tabItem {
                        Image(systemName: "bookmark.fill")
                    }
            }
        }
    }
}
