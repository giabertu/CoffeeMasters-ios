//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 18/03/23.
//

import SwiftUI

struct OrderItem: View {
    
    //this is a dependency that will need to be passed
    //to the constructor of the view
    var item: (Product, Int)
    
    @EnvironmentObject var cartManager: CartManager
    
    
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            Text("$ \(Double(item.1)*item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.title)
                .foregroundColor(Color("Secondary"))
                .padding()
                //how do you add tap listeners on views that are not buttons?
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (Product(id: 1, name: "Dummy", description: "", price: 1.25, image: ""), 1))
    }
}
