//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Busha on 16/07/2024.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) {
                appetizer in
                HStack {
                    Image("fufu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        .cornerRadius(8)
                    
                    VStack (alignment: .leading, spacing: 5){
                        Text(appetizer.name)
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Text("$\(appetizer.price, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                    }
                    .padding(.leading)
                }
            }
            .navigationTitle("Appetizers")
                
        }
    }
}

#Preview {
    AppetizerListView()
}
