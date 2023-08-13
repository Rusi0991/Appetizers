//
//  Appetizer.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 8/1/23.
//

import Foundation

struct Appetizer : Decodable, Identifiable {
    let id : Int
    let name :String
    let description : String
    let price : Double
    let imageURL : String
    let calories : Int
    let protein :Int
    let carbs : Int
}

struct AppetizerResponse : Decodable {
    let request : [Appetizer]
}

struct Mockdata {
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Test app",
                                           description: "This is test appetizer",
                                           price: 7.99,
                                           imageURL: "",
                                           calories: 150,
                                           protein: 20,
                                           carbs: 90)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    static let orderItemOne = Appetizer(id: 001,
                                           name: "Test appetizer one",
                                           description: "This is test appetizer",
                                           price: 7.99,
                                           imageURL: "",
                                           calories: 150,
                                           protein: 20,
                                           carbs: 90)
    static let orderItemTwo = Appetizer(id: 002,
                                           name: "Test appetizer two",
                                           description: "This is test appetizer",
                                           price: 7.99,
                                           imageURL: "",
                                           calories: 150,
                                           protein: 20,
                                           carbs: 90)
    static let orderItemThree = Appetizer(id: 003,
                                           name: "Test appetizer three",
                                           description: "This is test appetizer",
                                           price: 7.99,
                                           imageURL: "",
                                           calories: 150,
                                           protein: 20,
                                           carbs: 90)
    
    static let orderItems  = [orderItemOne,orderItemTwo,orderItemThree]
}
