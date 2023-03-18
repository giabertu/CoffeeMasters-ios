//
//  Product.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 12/03/23.
//

import Foundation


struct Product: Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var image: String = ""
    
    var imageURL: URL {
           URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
