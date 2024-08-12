//
//  Banner.swift
//  Appetizers
//
//  Created by Busha on 12/08/2024.
//

import SwiftUI

struct Banner: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("It’s a good day to eat healthy")
                    .font(.custom("BricolageGrotesque-Regular", size: 14))
                    .kerning(-0.4)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Order now")
                        .font(.custom("BricolageGrotesque-Medium", size: 16))
                        .kerning(-0.4)
                        .underline()
                        .foregroundColor(.black)
                        
                })
                
               /* Text("Order now")
                    .font(.custom("BricolageGrotesque24ptCondensed-Medium", size: 18))
                    .underline()*/
            }
            Spacer()
            Image(systemName: "arrow.right")
            
        }
        .frame(width: 330, height: 40)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 18).stroke(Color.black))
        .padding(.horizontal)
        .padding(.vertical, 4)
        .padding(.top)
    }
}

#Preview {
    Banner()
}
