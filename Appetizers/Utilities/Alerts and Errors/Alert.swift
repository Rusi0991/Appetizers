//
//  Alert.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 8/4/23.
//

import SwiftUI


struct AlertItem : Identifiable {
    let id = UUID()
    let title : Text
    let message : Text
    let dismissButton : Alert.Button
}

struct AlertContext {
    // Mark - Network Alerts
    static let invalidData      = AlertItem(title: Text("Server Error."),
                                       message: Text("The data received from the server was invalid. Please contact support"),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error."),
                                       message: Text("Invalid response from the server. Please try again later or contact support."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error."),
                                       message: Text("There was an issue connecting to the server. If this persists, please contact support."),
                                       dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error."),
                                       message: Text("Unable to complete your request at this time. Please check you internet connection."),
                                       dismissButton: .default(Text("OK")))
    
    // Mark - Account Alerts

    static let invalidForm      = AlertItem(title: Text("Invalid Form."),
                                       message: Text("Please insure all the fields in form is filled."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email."),
                                       message: Text("Please ensure your email is correct."),
                                       dismissButton: .default(Text("OK")))
}
