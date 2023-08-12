//
//  User.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 8/11/23.
//

import Foundation


struct User : Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
    var alertItem : AlertItem?
    
}

