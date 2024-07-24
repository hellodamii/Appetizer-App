//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Damilare on 18/07/2024.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers {result in
            DispatchQueue.main.async {
                self.isLoading = false 
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        self.alertItem = AlertContext.inValidData
                        
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        self.alertItem = AlertContext.inValidResponse
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                        
                    }
                }

            }
        }
    }
    
}
