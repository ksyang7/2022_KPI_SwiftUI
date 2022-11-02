//
//  MyView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/08.
//

import SwiftUI

struct MyView: View {
    
    var title: String
    var bgColor: Color
    
    var body: some View {
        ZStack{
            bgColor
//                .edgesIgnoringSafeArea(.all)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }.animation(.none)
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView(title: "1번", bgColor: Color.yellow)
    }
}
