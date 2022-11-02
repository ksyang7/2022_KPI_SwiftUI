//
//  MyHstack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by 양승은 on 2022/06/06.
//

import SwiftUI

struct MyHstack: View {
    var body: some View{
        HStack(alignment: .center){
//            Divider()
            Image(systemName: "flame.fill")
                .foregroundColor(.white)
                .font(.system(size: 70))
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
        }
//        .padding()
        .background(Color.green)
    }
}
struct MyHstack_Previews: PreviewProvider {
    static var previews: some View {
        MyHstack()
    }
}
