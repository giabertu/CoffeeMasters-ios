//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 12/03/23.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        //What is navigationView? It allows us to set a title for a page -- using the .navigationTitle modifier inside the content
        NavigationView{
            //What is a list? A VStack with scroll and more interactivity
            List {
                Offer(title: "Early Coffee", description: "Get a free coffee before 8am")
                Offer(title: "Welcome Gift", description: "Get 10 per cent off on your first order")
            }.navigationTitle("Offers")
        }
    }
}

struct OffersPage_Previews: PreviewProvider {
    static var previews: some View {
        OffersPage()
    }
}
