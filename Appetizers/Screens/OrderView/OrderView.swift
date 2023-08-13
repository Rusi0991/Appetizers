//
//  OrderView.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 7/31/23.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = Mockdata.orderItems
    
    var body: some View {
        NavigationView {
            VStack{
                List{
                    ForEach(orderItems){ appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(.plain)
                
                Button{
                    print("Order Placed")
                }label: {
                    APButton(title: "$99.99 - Place Order")
                }
                .padding(.bottom , 25)
            }
                .navigationTitle("🧾Orders")
        }
    }
    
    func deleteItems(at offSets : IndexSet){
        orderItems.remove(atOffsets: offSets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
