//
//  AccountView.swift
//  Appetizers
//
//  Created by Damilare on 16/07/2024.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $firstName)
                }
        
            }
            .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
