//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Damilare on 16/07/2024.
//

import SwiftUI

struct AppetizerListCell: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    var body: some View {
        
        ZStack(alignment: .bottom) {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 370, height:  240)
                .clipped()
            
            Rectangle()
                .fill(Color.black.opacity(0.7))
                .frame(width: 370)
            
            
            VStack(alignment: .leading) {
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .font(.custom("BricolageGrotesque-Bold", size: 12))
                    .kerning(-0.4)
                    .foregroundColor(.brandPrimary)
                    .padding(20)
                    .background(Color.priceGreen)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.brandPrimary))
                    .padding(16)
                
                Spacer()
                
                HStack(alignment: .lastTextBaseline){
                    Text(appetizer.name)
                        .font(.custom("BricolageGrotesque-Medium", size: 32))
                        .kerning(-0.4)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .minimumScaleFactor(0.8)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .frame(width: 200, alignment: .topLeading)
                    
                    
                    Spacer()
                    
                    Button(action: {order.add(appetizer)
                        
                        }) {
                            HStack(spacing: 4) {
                            Text("Add to Bag")
                                    .kerning(-0.4)
                                .underline()
                            Image(systemName: "arrow.right")
                                .font(.system(size: 12, weight: .regular))
                        }
                        .foregroundColor(.white)
                        .font(.custom("BricolageGrotesque-Medium", size: 14))
                        
                        
                    }
                    
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 20)
                
            }
            
            
            
        }
        .frame(height: 240)
        .cornerRadius(18)
        
        
        
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
