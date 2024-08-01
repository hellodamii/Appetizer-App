//
//  Alert.swift
//  Appetizers
//
//  Created by Damilare on 19/07/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: - Network Alerts
    static let inValidData      = AlertItem(title: Text("Server Error"),
                                              message:Text( "The data received from the server is invalid, Please contact support."),
                                              dismissButton: .default(Text("Ok")))
    
    static let inValidResponse  = AlertItem(title: Text( "Server Error"),
                                                         message: Text("Invalid response from the server. Please try again later or contact support."), dismissButton: .default(Text("Ok")))
    
    
    static let invalidURL       = AlertItem(title:Text( "Server Error"),
                                                        message: Text("There was an issue with the server. If this persists, please contact support."), dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title:Text( "Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."), dismissButton: .default(Text("Ok")))
    
    
    //MARK: - Account Alerts
    static let inValidForm = AlertItem(title:Text( "Invalid Form"),
                                            message: Text("Please ensure all fields in the form has been filled out"), dismissButton: .default(Text("Ok")))
    
    static let inValidEmail = AlertItem(title:Text( "Invalid Email"),
                                            message: Text("Please ensure your email is correct."), dismissButton: .default(Text("Ok")))
    
    static let userSaveSuccess = AlertItem(title:Text( "Profile Saved"),
                                            message: Text("Your profile information was successfully saved."), dismissButton: .default(Text("Ok")))
    
    static let invalidUserData = AlertItem(title:Text( "Profil Error"),
                                            message: Text("There was an error saving or retrieving your profile."), dismissButton: .default(Text("Ok")))
}



