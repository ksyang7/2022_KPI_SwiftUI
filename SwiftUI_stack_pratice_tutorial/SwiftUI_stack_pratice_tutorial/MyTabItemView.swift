//
//  MyTabItemView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/08.
//

import SwiftUI

struct MyTabItemView: View{
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            Image(systemName: "airplane")
                .background(Color.yellow)
            //Text("1번")
        }
        
    }
}

struct MyTabItemView_Perviews: PreviewProvider {
    static var previews: some View {
        MyTabItemView()
    }
}
