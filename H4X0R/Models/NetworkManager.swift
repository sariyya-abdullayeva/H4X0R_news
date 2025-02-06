//
//  NetworkManager.swift
//  H4X0R
//
//  Created by Sariyya Abdullayeva on 06.02.2025.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts: [Post] = [] // Automatically updates UI when data changes

    func fetchData() {
        // Construct a URL from the string
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else {
            print("invalid url")
            return
        }
    
        
        // Create a GET request task
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // Handle errors
            if let error = error {
                print("Error fetching data: \(error.localizedDescription)")
                return
            }
            
            // Check if response is valid and data exists
            if let httpResponse = response as? HTTPURLResponse, let data = data {
                print("HTTP Status Code: \(httpResponse.statusCode)")

                do {
                    // Decode JSON into Results struct
                    let decodedResponse = try JSONDecoder().decode(Results.self, from: data)
                    
                    DispatchQueue.main.async { //Update UI on main thread
                        self.posts = decodedResponse.hits //Store fetched posts
                    }
                    
                } catch {
                    print("Decoding error: \(error.localizedDescription)")
                }
            }
        }
        // Start the request
        task.resume()
    }
}

