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
    }
    
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
