//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Damilare on 16/07/2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
