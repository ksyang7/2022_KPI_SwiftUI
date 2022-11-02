//
//  ContentView.swift
//  Image_tutorial
//
//  Created by 양승은 on 2022/06/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -1200)
                
                CircleImageView()
                
                HStack{
                    NavigationLink(destination: MyWebview(urlToLoad: "https://www.youtube.com/watch?v=ZodiJ0oy2kM&list=PLgOlaPUIbynqyJHiTEv7CFaXd8g5jtogT&index=6")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("구독하러 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination: MyWebview(urlToLoad: "https://www.naver.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("오픈깨톡방 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(20)
                    }
                }//HStack
                .padding(50)
                
            }
        }
        CircleImageView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
