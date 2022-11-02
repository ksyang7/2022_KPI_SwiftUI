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
            .font(.system(size: 15))
            .foregroundColor(Color.white)
            .frame(width: 100)
            .padding(5)
            .background(color)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
            .onTapGesture {
                                if (self.type == .tab){
                                    let haptic = UIImpactFeedbackGenerator(style: .light)
                                    haptic.impactOccurred()
                                }
                            }.onLongPressGesture {
                                if (self.type == .long){
                                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                                    haptic.impactOccurred()
                                }
                            }
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
