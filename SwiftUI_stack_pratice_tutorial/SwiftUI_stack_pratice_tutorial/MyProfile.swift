//
//  MyProfile.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/07.
//

import SwiftUI

struct MyProfile: View{
    
    @State var shouldShowAlert: Bool = false
    
    var body: some View{
        NavigationView{
            VStack{
                HStack{
                    Spacer()
                    NavigationLink(destination: Text("넘어온 화면입니다.")){
                        Image(systemName: "bookmark.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                    }.padding(.trailing)
                }.foregroundColor(.yellow)
                
                Image("imsmart")
                    .resizable()
                    .frame(width: 150, height:150)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                        .stroke(lineWidth:10)
                        .foregroundColor(Color.yellow
                                        )
                    )
                    .shadow(color: .gray, radius: 5, x: 5, y: 10)
                
                Text("아임스마트")
                    .font(.system(size: 32))
                    .fontWeight(.heavy)
                    .padding()
                Text("구독 좋아요 부탁드립니다.")
                    .font(.system(size: 22))
                    .fontWeight(.heavy)
                    .padding(.bottom)
                HStack{
                    Button(action: {
                        print("확인 버튼이 클릭 되었습니다.")
                        self.shouldShowAlert = true
                    }){
                        Text("구독하러 가기")
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 180)
                            .background(Color.red)
                            .cornerRadius(20)
                    }.alert(isPresented: $shouldShowAlert){
                        Alert(title: Text("구독하러 가기 버튼이 클릭 되었습니다."))
                    }
                    
                    Button(action: {
                        print("확인 버튼이 클릭 되었습니다.")
                        self.shouldShowAlert = true
                    }){
                        Text("오픈깨톡방 가기")
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 180)
                            .background(Color.orange)
                            .cornerRadius(20)
                    }.alert(isPresented: $shouldShowAlert){
                        Alert(title: Text("오픈깨톡방 가기 버튼이 클릭 되었습니다."))
                    }
                }
                Spacer()
            }
            
            
            
            
            
        } // NavigationView
        
    }
}

struct MyProfile_Previews: PreviewProvider{
    static var previews: some View{
        MyProfile()
    }
}
