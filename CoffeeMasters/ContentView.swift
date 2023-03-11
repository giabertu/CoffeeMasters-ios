//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 08/03/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        EmptyView()
    }
}



//struct Greeting: View {
//    //this is equivalent to a state variable
//    @State var name = "unnamed"
//    var body: some View{
//        VStack {
//            //the dollar sign is used for double binding -- you read and write
//            TextField("Enter your name: ", text: $name)
//            //no dollar sign because you only read the value
//            Text("Hello \(name)")
//        }
//    }
//}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// vstack takes in a closure -- this is trailing closure syntax!
// the HStack that you see below is the initialiser of the HStack struct
// You can omit the closure from the arguments passed (if its the last one)
// And then just simply open curly brackets. This is what we are doing here!
// In js it would be new HStack(() => {...code µ})
