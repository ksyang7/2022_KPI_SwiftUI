//
//  LoadingIndicatorView.swift
//  SwiftUI_Webview_tutorial
//
//  Created by 양승은 on 2022/06/25.
//

import Foundation
import SwiftUI
import UIKit

struct LoadingIndicatorView: UIViewRepresentable {
    var isAniming: Bool = true
    var color: UIColor = .white
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Self>){
        isAniming ? uiView.startAnimating() : uiView.stopAnimating()
        uiView.style = .large
        uiView.color = color
    }
}
