//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Busha on 29/07/2024.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    func saveChanges() {
        guard isValidForm else {return}
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
        } catch {
            
        }
    }
    
    func retrieveUser() {
        
    }
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.inValidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContext.inValidEmail
            return false
        }
        
        return true
  
    }
    
    
}
