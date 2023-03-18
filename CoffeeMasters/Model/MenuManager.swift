//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Gianni Bertuzzi on 12/03/23.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
    
    @Published var menu: [Category] = []
    
    init(){
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork()  {
            AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
                //what protocol do our types need to conform to, to be able to be parsed from JSON?
                //Decodable. This applies to the Type and any custom Types inside the type.
        
                //what does [Category].self mean?
                //it means you are expecting an array of catogories back from the API
                .responseDecodable(of: [Category].self) { response in
                    if let menuFromNetwork = response.value {
                        print(response.value)
                        self.menu = menuFromNetwork
                    }
                }
        }
}






