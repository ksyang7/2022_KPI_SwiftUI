//
//  MyCard.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/07.
//

import SwiftUI

struct MyCard: View{
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    var body: some View {
        HStack(spacing : 20){
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)

            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("\(start) ~ \(end)")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
            }
        }
        .padding(20)
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View{
        MyCard(icon:"book.fill", title: "책읽기", start: "1PM", end: "3PM", bgColor: Color.green)
    }
}
