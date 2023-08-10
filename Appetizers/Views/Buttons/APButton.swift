//
//  APButton.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 8/8/23.
//

import SwiftUI

struct APButton: View {
    let title : LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct APButtons_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "Test Title")
    }
}