//
//  Category.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 12/03/23.
//

import Foundation


struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
}
