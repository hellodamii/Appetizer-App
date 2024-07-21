//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Damilare on 16/07/2024.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List(viewModel.appetizers) {
                    appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle("Appetizers")
                    
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
                        
        }
        .alert(item: $viewModel.alertItem) {
            alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
            }
        
        }
    }

#Preview {
    AppetizerListView()
}
