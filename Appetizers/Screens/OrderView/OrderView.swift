//
//  OrderView.swift
//  Appetizers
//
//  Created by Damilare on 16/07/2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: { indexSet in
                            order.items.remove(atOffsets: indexSet)
                        })
                    }
                    .listStyle(PlainListStyle())
                    
                    Button(action: {
                                }) {
                                    Text("Place Order")
                                   .font(.system(size: 18, weight: .medium))
                                   .padding()
                                    .frame(width: 311, height: 54)
                                    .foregroundColor(.white)
                                    .background(Color.brandPrimary)
                                    .cornerRadius(16)   }
                                    .padding(.bottom, 25)

                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "no-notification", message: "Your cart is empty")
                }
            }
            
            .navigationTitle("Orders")
                
            }
        }
    }

#Preview {
    OrderView()
}
