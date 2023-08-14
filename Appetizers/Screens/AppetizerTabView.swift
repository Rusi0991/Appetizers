//
//  ContentView.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 7/31/23.
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order : Order
    var body: some View {
        TabView{
            AppetizerListView()
                .tabItem{Label("Home", systemImage: "house")}
            AccountView()
                .tabItem{Label("Account", systemImage: "person")}
            OrderView()
                .tabItem{Label("Order", systemImage: "bag")}
                .badge(order.items.count)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let order = Order()
                return AppetizerTabView()
                    .environmentObject(order)
    }
}
