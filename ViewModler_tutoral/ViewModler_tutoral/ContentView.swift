//
//  ContentView.swift
//  ViewModler_tutoral
//
//  Created by 양승은 on 2022/06/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Hello, world!")
                .myRoundTextStyle()
            Text("Hello, world!")
                .myRoundTextStyle()
            Image(systemName: "pencil")
                .myRoundTextStyle()
            Rectangle().frame(width: 100,height: 100)
                .myRoundTextStyle()
        }
        
            
    }
}

extension View{
    func myRoundTextStyle() -> some View{
        modifier(MyRoundedText())
    }
}
struct MyRoundedText: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .background(Color.yellow)
            .cornerRadius(20)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 10).foregroundColor(.blue)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
