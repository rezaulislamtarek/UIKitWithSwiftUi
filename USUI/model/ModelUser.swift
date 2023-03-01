//
//  ModelUser.swift
//  USUI
//
//  Created by MD. Rezaul Islam Tarek on 1/3/23.
//

import Foundation
class ModelUser : Identifiable{
    let id = UUID()
    var name:String
    var age: Int
    var address:String
    
    init(name: String, age: Int, address: String) {
        self.name = name
        self.age = age
        self.address = address
    }
}
