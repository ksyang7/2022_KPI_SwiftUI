//
//  MyButtonStyle.swift
//  ButtonStyle_swiftUI
//
//  Created by 양승은 on 2022/06/10.
//

import SwiftUI

enum ButtonType{
    case tab
    case long
}

struct MyButtonStyle: ButtonStyle{
    
    var color: Color
    var type: ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration
            .label
            .font(.system(size: 20))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
    }
}


struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button clicked")
        }, label: {
            Text("haha")
        }).buttonStyle(MyButtonStyle(color: .blue, type: .long))
    }
}

