//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 08/03/23.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    
    var menuManager = MenuManager()
    var cartManager = CartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            //how do i make manager vars above accessible to other views in hierarchy?
            .environmentObject(menuManager)
            .environmentObject(cartManager)

        }
    }
}
 

//a scene is kinda like a window
//having more than one scene means that on iPad you can have two windows of this app open at the same time.



//any view can now recieve these objects using the @EnvironmentObject decorator

