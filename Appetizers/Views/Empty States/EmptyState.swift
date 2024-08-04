//
//  EmptyState.swift
//  Appetizers
//
//  Created by Busha on 03/08/2024.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    var body: some View {
        
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 260)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding(.bottom)
                
            }
            .offset(y: -60)
            
        }
        
    }
}

#Preview {
    EmptyState(imageName: "no-notification", message: "Your order is empty")
}
