//
//  MyTabBarIcon.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/08.
//

import SwiftUI

struct TabBarIcon: View {
    let width, height: CGFloat
    let systemIconName, tabName: String
//    let foregroundColor: Color
    
    
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .foregroundColor(.yellow)
                .padding(.top, 10)
            Text(tabName)
                .font(.footnote)
                .fontWeight(.heavy)
                .foregroundColor(.yellow)
            Spacer()
        }
    }
 }

struct TabBarIcon_Previews: PreviewProvider{
    static var previews: some View{
        TabBarIcon(width: 30, height: 30, systemIconName: "airplane", tabName: "1번")
    }
}
