//
//  MyBasicCard.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/06.
//

import SwiftUI

struct MyBasicCard: View{
    var body: some View {
        HStack(spacing : 20){
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)

            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                Text("하하")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("호호")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
            }
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View{
        MyBasicCard()
    }
}
