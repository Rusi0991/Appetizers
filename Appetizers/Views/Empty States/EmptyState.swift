//
//  EmptyState.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 8/12/23.
//

import SwiftUI

struct EmptyState: View {
    let image : String
    let message : String
    var body: some View {
       
        
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack{
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
                
            }
            .offset(y: -50)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(image: "empty-order", message: "This is our test message.\n I'm making it a little longer for testing")
    }
}
