//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 12/03/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
    
    func add(product: Product, quantity: Int){
        self.cart.append((product, quantity))
    }
    
    func remove(product: Product){
        self.cart.removeAll { itemInCart in
            return itemInCart.0.id == product.id
        }
    }
    
}
