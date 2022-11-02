//
//  MyProjectCard.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/06.
//

import SwiftUI

struct MyProjectCard: View{
    
    @State var shouldShowAlert: Bool = false

    var body:  some View{
        
        VStack(alignment: .leading, spacing: 0){
//            Rectangle().frame(height: 0)
            
            Text("SMART 프로젝트")
                .padding(.bottom, 5)
            Text("10 AM - 11 AM")
                .foregroundColor(.secondary)
            Spacer().frame(height: 20)
            HStack{
                Image("user_01")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                        .stroke(lineWidth:5)
                        .foregroundColor(Color.red)
                    )
                
                Image("user_02")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                        .stroke(lineWidth:5)
                        .foregroundColor(Color.red)
                    )
                Image("user_03")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                        .stroke(lineWidth:5)
                        .foregroundColor(Color.red)
                    )
                Spacer()
                
                Button(action: {
                    print("확인 버튼이 클릭 되었습니다.")
                    self.shouldShowAlert = true
                }){
                    Text("확인")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("확인 버튼이 클릭 되었습니다."))
                }
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View{
        MyProjectCard()
    }
}
