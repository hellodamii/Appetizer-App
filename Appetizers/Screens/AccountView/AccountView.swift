//
//  AccountView.swift
//  Appetizers
//
//  Created by Damilare on 16/07/2024.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var Email = ""
    @State private var birthdate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $firstName)
                        .disableAutocorrection(true)
                    TextField("Last Name", text: $lastName)
                        .disableAutocorrection(true)
                    TextField("Email", text: $Email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $birthdate,
                               displayedComponents: .date)
                    
                    Button{
                        print("Save")
                    } label: {
                            Text("Save Changes")
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                        
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
