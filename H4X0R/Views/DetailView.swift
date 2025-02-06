//
//  DetailView.swift
//  H4X0R
//
//  Created by Sariyya Abdullayeva on 06.02.2025.
//

import SwiftUI

struct DetailView: View {
    let url: String?
        
        var body: some View {
            NavigationView {
                WebView(urlString: url)
                    .navigationBarTitle("Web View", displayMode: .inline)
            }
        }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
