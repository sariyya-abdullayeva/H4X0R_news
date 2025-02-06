//
//  PostData.swift
//  H4X0R
//
//  Created by Sariyya Abdullayeva on 06.02.2025.
//



import Foundation

// MARK: - Main Response Model
struct Results: Codable {
    let hits: [Post]
}

// MARK: - Hit (Single Item)
struct Post: Codable, Identifiable {
    var id: String { objectID } // Use objectID as the unique identifier
        
        let title: String
        let url: String?
        let objectID: String
        let points: Int?
    
}
