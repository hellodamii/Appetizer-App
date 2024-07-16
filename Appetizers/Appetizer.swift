//
//  Appetizer.swift
//  Appetizers
//
//  Created by Busha on 16/07/2024.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Fufu",
                                           description: "This is the description for my appetizer. It's yummy",
                                           price: 9.99,
                                           imageURL: "https://lowcarbafrica.com/wp-content/uploads/2020/11/fufu-IG-1.jpg",
                                           calories: 99,
                                           protein: 02,
                                           carbs: 1000)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
