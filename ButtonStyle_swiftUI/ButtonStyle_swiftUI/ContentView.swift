//
//  ContentView.swift
//  ButtonStyle_swiftUI
//
//  Created by 양승은 on 2022/06/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30){
            Button(action: {
                print("button clikded")
            }, label: {
                Text("Tab")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: .blue, type: .tab))
            
            Button(action: {
                print("button clikded")
            }, label: {
                Text("long")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: .yellow, type: .long))
            
            Button(action: {
                print("button clikded")
            }, label: {
                Text("reduction")
                    .fontWeight(.bold)
            }).buttonStyle(Smaller(color: Color.purple))
            
            Button(action: {
                print("button clikded")
            }, label: {
                Text("rotate")
                    .fontWeight(.bold)
            }).buttonStyle(RotateButton(color: Color.pink))
            
            Button(action: {
                print("button clikded")
            }, label: {
                Text("blur")
                    .fontWeight(.bold)
            }).buttonStyle(BlurButton(color: Color.green))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
