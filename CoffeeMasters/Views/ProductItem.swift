//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 12/03/23.
//

import SwiftUI

struct ProductItem: View {
    var body: some View {
        VStack {
            Image("DummyImage")
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
            HStack {
                VStack(alignment: .leading) {
                    Text("Product Name")
                        .font(.title3)
                        .bold()
                    Text("$ 4.25")
                }.padding(8)
                Spacer()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding(.trailing)
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem()
    }
}
