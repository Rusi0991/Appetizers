//
//  LoadingView.swift
//  Appetizers
//
//  Created by Ruslan Ismayilov on 8/5/23.
//

import SwiftUI

struct ActivityIndicator : UIViewRepresentable{
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}

    struct LoadingView : View {
        var body : some View {
            ZStack{
                Color(.systemBackground)
                    .ignoresSafeArea()
                
//                ActivityIndicator()
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimary))
                    .scaleEffect(2)
            }
        }
    }
    

