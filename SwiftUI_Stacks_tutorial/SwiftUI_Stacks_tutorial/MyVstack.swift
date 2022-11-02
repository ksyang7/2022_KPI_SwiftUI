//
//  MyVstack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by 양승은 on 2022/06/06.
//

import SwiftUI

struct MyVstack: View{
    
    var body: some View{
        VStack(alignment:.trailing, spacing: 0){
//            Divider()
//                .opacity(0)
//            Rectangle()
//                .frame(height: 1)
            Spacer()
            
            Text("글자")
                .font(.system(size: 30))
                .fontWeight(.heavy)

            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.orange)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
            
            Spacer()
        }
        .frame(width: 300)
        .background(Color.white)
        
//        .edgesIgnoringSafeArea(.all)
        
    }
}
struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}

