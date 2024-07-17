//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Busha on 17/07/2024.
//

import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    static let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        
    }
}
