//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 12/03/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
    
}
