//
//  AccountView.swift
//  Appetizers
//
//  Created by Damilare on 16/07/2024.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .disableAutocorrection(true)
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .disableAutocorrection(true)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $viewModel.user.birthdate,
                               displayedComponents: .date)
                    
                    Button{
                        viewModel.saveChanges()
                    } label: {
                            Text("Save Changes")
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                        
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("Account")
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, 
                  message: alertItem.message, 
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
