//
//  OrderView.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 7/31/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Orders")
                .navigationTitle("🧾Orders")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
