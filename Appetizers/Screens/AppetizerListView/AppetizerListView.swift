//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Damilare on 16/07/2024.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedAppetizer: Appetizer?
    
    var body: some View {
        
        ZStack {
            NavigationView {
                VStack(alignment: .leading) {
                    Banner()
                    List(viewModel.appetizers) {
                        appetizer in
                        AppetizerListCell(appetizer: appetizer)
                            .onTapGesture {
                                selectedAppetizer = appetizer
                                isShowingDetail = true
                                
                            }
                            .listRowSeparator(.hidden)
                        
                    }
                    .listRowSpacing(.none)
                    .listStyle(PlainListStyle())
                    //.navigationTitle("Morning, Damilare")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            HStack{
                                VStack(alignment: .leading){
                                    HStack(spacing: 8){
                                        Text("Ibadan, NG")
                                            .font(.custom("BricolageGrotesque-Medium", size: 12))
                                        Image(systemName: "chevron.down")
                                            .font(.system(size: 12))
                                    
                                    }
                                    Text("Morning, Damilare")
                                        .font(.custom("BricolageGrotesque-Medium", size: 24))
                                        .kerning(-0.4)
                                }
                                
                                Spacer()
                            }
                        }
                    }
                    .disabled(isShowingDetail)
                }
                
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            if isShowingDetail {
                AppetizerDetailView(appetizer: selectedAppetizer!,
                                    isShowingDetail: $isShowingDetail)
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
    
    
  /* init() {
        for familyName in UIFont.familyNames {
            print(familyName)
            
            for fontName in UIFont.fontNames(forFamilyName:
                                                familyName) {
                print("--\(fontName)")
            }
        }
    }*/
}

#Preview {
    AppetizerListView()
}
