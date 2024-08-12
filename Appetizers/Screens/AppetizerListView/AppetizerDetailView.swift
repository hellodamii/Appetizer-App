//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Damilare on 24/07/2024.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack(spacing: 16) {
            HStack{
                Spacer()
                Button(action:{
                    isShowingDetail = false
                    }) {
                    Image(systemName: "xmark")
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .imageScale(.small)
                        .frame(width: 32, height: 32)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(32)
                        .padding(8)}
            }

            Text(appetizer.name)
                .font(.system(size: 24, weight: .semibold, design: .default))
                .fontWeight(.semibold)
            
            Text(appetizer.description)
                .multilineTextAlignment(.center)
                .font(.system(size: 18, weight: .regular))
                .minimumScaleFactor(0.5)
                .frame(width: 280)
                
                
                
                
            
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 311, height: 158)
                .cornerRadius(16)
                .padding(.top,2)
           
            VStack(spacing: 4){
                
                HStack(alignment: .center){
                    Text("Price")
                        .font(.system(size: 16, weight: .regular))
                    Spacer()
                    Text("$\(appetizer.price, specifier: "%.2f")")
                        .font(.system(size: 16, weight: .medium))
                }
                .frame(width: 303)
                
                .padding()
                Divider()
                    .frame(width: 303)
                
                HStack(alignment: .center){
                    Text("Calories")
                        .font(.system(size: 16, weight: .regular))
                    Spacer()
                    Text("\(appetizer.calories) g")
                        .font(.system(size: 16, weight: .medium))
                }
                .frame(width: 303)
                .padding()
                Divider()
                    .frame(width:303)
                
                HStack(alignment: .center){
                    Text("Carbs")
                        .font(.system(size: 16, weight: .regular))
                    Spacer()
                    Text("\(appetizer.carbs) g")
                        .font(.system(size: 16, weight: .medium))
                }
                .frame(width: 303)
                .padding()
                Divider()
                    .frame(width: 303)
                
                HStack(alignment: .center){
                    Text("Protein")
                        .font(.system(size: 16, weight: .regular))
                    Spacer()
                    Text("\(appetizer.protein) g")
                        .font(.system(size: 16, weight: .medium))
                }
                .frame(width: 303)
                .padding()
                
               
            }
            .frame(width: 311, height: 220)
            .cornerRadius(16)
            .padding(.bottom)
                
            Button(action: { order.add(appetizer) 
                        isShowingDetail = false 
                        }) {
                            HStack {
                                Image(systemName: "bag")
                                    .font(.system(size: 18, weight: .medium))
                                Text("Add to Bag")
                                    .font(.system(size: 18, weight: .medium))
                                    
                            }
                            .padding()
                            .frame(width: 311, height: 54)
                            .foregroundColor(.white)
                            .background(Color.brandPrimary)
                            .cornerRadius(16)
                        }
                        .padding(.bottom)
            
        }
        .frame(width: 370, height: 680)
        .background(Color(.systemBackground))
        .cornerRadius(24)
        .shadow(radius: 40)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer,
                        isShowingDetail: .constant(true))
}
