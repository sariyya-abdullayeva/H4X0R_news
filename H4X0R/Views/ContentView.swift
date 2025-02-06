//
//  ContentView.swift
//  H4X0R
//
//  Created by Sariyya Abdullayeva on 05.02.2025.
//

import SwiftUI
import Foundation


struct ContentView: View {
    @StateObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) { // Open WebView inside the app

                VStack(alignment: .leading, spacing: 5) { // Aligns elements neatly
                    //  Post Title
                    Text(post.title)
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    
                    // Post Points with Star Icon
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("\(post.points ?? 0) points")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
            }
                .padding(.vertical, 8)
            }
            .navigationBarTitle("H4X0R News")
        }
        .onAppear { // ✅ Fetch data when view appears
            networkManager.fetchData()
        }
    }
}


#Preview {
    ContentView()
}
