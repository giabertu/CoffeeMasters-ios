//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 12/03/23.
//

import SwiftUI

struct MenuPage: View {
    
    //no need to create an instance of it!
    @EnvironmentObject var menuManager: MenuManager
    
    var body: some View {
        NavigationView{
            List{
                
                //loop through menu array inside manager
                ForEach(menuManager.menu) { category in
                    Text(category.name)
                    
                    ForEach(category.products) { product in
                        NavigationLink {
                            //render DetailsPage()
                            DetailsPage(product: product)
                        } label: {
                            //click on ProductItem()
                            ProductItem(product: product)
                        }

                    }
                    
                    ProductItem(product: Product(id: 1, name: "Dummy Product", description: "This is a good description", price: 4.25))
                }
            }.navigationTitle("Products")
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
            .environmentObject(MenuManager())
    }
}
