//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 12/03/23.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    NavigationLink {
                        //render DetailsPage()
                        DetailsPage()
                    } label: {
                        //click on ProductItem()
                        ProductItem()
                    }

                    ProductItem()
                }
            }.navigationTitle("Products")
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage()
    }
}
