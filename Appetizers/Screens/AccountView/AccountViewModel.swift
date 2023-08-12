//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 8/10/23.
//

import SwiftUI

final class AccountViewModel : ObservableObject {
    @Published var user = User()
    var isValidForm : Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            user.alertItem = AlertContext.invalidForm
            return false
        }
        guard user.email.isValidEmail else{
            user.alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges(){
        guard isValidForm else {return}
        print("Changes have been saved successfully")
    }
}
