//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 7/31/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(Mockdata.appetizers){ appetizer in
               AppetizerListCell(appetizer: appetizer)
            }
            .listStyle(.plain)
            .navigationTitle("🍟 Appetizers")
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
