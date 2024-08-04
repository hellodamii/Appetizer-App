//
//  Order.swift
//  Appetizers
//
//  Created by Damilare on 04/08/2024.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
}
