//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 11/03/23.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    
    var body: some View {
        ZStack{
            //image at lowest level
            Image("Background Pattern")
                .frame(maxWidth: .infinity, maxHeight: 200)
            //the clipped modifier makes the background be clipped by the size we set!
                .clipped()
            //vstack on second level
            VStack {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
                
            }
        }
        
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Offer(title: "My Offer", description: "This is a description")
    }
}
