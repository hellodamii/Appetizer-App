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
    }
    }

#Preview {
    AppetizerListView()
}
