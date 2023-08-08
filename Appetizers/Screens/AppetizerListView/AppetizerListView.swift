//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 7/31/23.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack{
            NavigationView {
                List(viewModel.appetizers){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .listStyle(.plain)
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            if viewModel.isLoading{
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
