//
//  WebView.swift
//  H4X0R
//
//  Created by Sariyya Abdullayeva on 06.02.2025.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let urlString = urlString, let url = URL(string: urlString) else {
            return
        }
        uiView.load(URLRequest(url: url))
    }
}
