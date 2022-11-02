//
//  MyTabView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/08.
//

import SwiftUI

struct MyTabView: View {
    
    var body: some View {
        TabView{
            MyView(title: "1번", bgColor: .yellow)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
            
            MyView(title: "2번", bgColor: .blue)
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(1)
            
            MyView(title: "3번", bgColor: .green)
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("2번")
                }
                .tag(2)
        }
        .onAppear{
            UITabBar.appearance().backgroundColor = .white
        }
    }
    
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
