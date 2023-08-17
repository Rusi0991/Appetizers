//
//  AccountView.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 7/31/23.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusTextField : FormTextfield?
    
    enum FormTextfield{
        case firstname, lastname, email
    }
    
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $viewModel.user.firstName)
                        .autocorrectionDisabled()
                        .focused($focusTextField, equals: .firstname)
                        .onSubmit {focusTextField = .lastname}
                        .submitLabel(.next)
                    
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .autocorrectionDisabled()
                        .focused($focusTextField, equals: .lastname)
                        .onSubmit {focusTextField = .email}
                        .submitLabel(.next)

                    TextField("Email", text: $viewModel.user.email)
                        .focused($focusTextField, equals: .email)
                        .onSubmit {focusTextField = nil}
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                        .submitLabel(.continue)

                    
                    DatePicker("Birthdate", selection: $viewModel.user.birthdate, displayedComponents: .date)
                        
                        
                    Button{
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
//                            .foregroundColor(.brandPrimary)
                    }

                }
                Section(header: Text("Requests")){
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))

                        }
                    .navigationTitle("👨‍💼Account")
                    .toolbar{
                        ToolbarItem(placement: .keyboard) {
                            Button("Dismiss") {focusTextField = nil}
                        }
                    }
        }
        .task {
            viewModel.retreiveUser()
        }
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
