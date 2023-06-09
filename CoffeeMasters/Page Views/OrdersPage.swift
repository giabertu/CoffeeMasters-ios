//
//  CartPage.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 12/03/23.
//

//bring singleton that was injected in the app (object passed in line 22 of CoffeeMastersApp

import SwiftUI

struct OrdersPage: View {
    
    @State var name: String = ""
    @State var phone: String = ""
    
    //get injected cartManager from hierarchy
    @EnvironmentObject var cartManager: CartManager
    
    
    
    var body: some View {
        
        NavigationView {
            if cartManager.cart.count == 0 {
                Text("Your order is empty")
                    .navigationTitle("Your Order")
            } else {
                List {
                    Section("ITEMS") {
                        ForEach(cartManager.cart, id:\.0.id) { item in
                            OrderItem(item: item)
                        }
                    }.listRowBackground(Color("Background"))
                    
                    Section("YOUR DETAILS") {
                        VStack {
                            TextField("Your Name", text: $name)
                                .textFieldStyle(.roundedBorder)
                            Spacer().frame(height: 20)
                            TextField("Your Phone #", text: $phone)
                                .keyboardType(.phonePad)
                                .textFieldStyle(.roundedBorder)
                        }.padding(.top)
                            .padding(.bottom)
                    }.listRowBackground(Color("Background"))
                    
                    Section() {
                        HStack {
                            Spacer()
                            Text("Total")
                            Spacer()
                            Text("$ \(cartManager.total(), specifier: "%.2f")")
                            .bold()
                            Spacer()
                        }
                    }.listRowBackground(Color.clear)
                    
                    Section {
                        HStack {
                            Spacer()
                            Button("Place Order") {
                                //TODO: Validation
                                //                                   orderConfirmed = true
                            }
                            .padding()
                            .frame(width: 250.0)
                            .background(Color("Alternative2"))
                            .foregroundColor(Color.black)
                            .cornerRadius(25)
                            
                            Spacer()
                        }
                    }.listRowBackground(Color.clear)
                }
                .listSectionSeparatorTint(Color("AccentColor"))
                .listStyle(.insetGrouped)
                .navigationTitle("Your Order")
                //                   .alert("Order", isPresented: $orderConfirmed, actions: {
                //                       Button("OK", role: .cancel) {
                //                           //TODO: send order
                //                           orderConfirmed = false
                //                           cartManager.clear()
                //                       }
                //                   }, message: {
                //                       Text("Your order is being prepared.")
                //                           .font(.title)
                //                   })
            }
        }
    }
    
}


struct CartPage_Previews: PreviewProvider {
    static var previews: some View {
        OrdersPage()
            .environmentObject(CartManager())
    }
}
