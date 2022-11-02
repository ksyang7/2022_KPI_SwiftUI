//
//  ContentView.swift
//  DarkMode_tutorial
//
//  Created by 양승은 on 2022/06/20.
//

import SwiftUI

struct ContentView: View {
    
    @State fileprivate var shouldShowAlert: Bool = false
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        ZStack{
            Theme.myBackgroundColor(forScheme: scheme)
            VStack{
                Spacer()
                
                Button(action: {
                    print("로그인 버튼이 눌렸습니다.")
                    shouldShowAlert.toggle()
                }, label: {
                    Text("로그인하러 가기")
                        .font(.system(size: 10))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Theme.myBackgroundButtonColor(forScheme: scheme))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 13)
                                .stroke(Color.white)
                        )
                })
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("안녕하세요."), message: Text("오늘도 즐거운 하루 되세요"), dismissButton: .default(Text("닫기")))
            
                })
                Spacer().frame(height: 100)
            }
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Theme{
    static func myBackgroundColor(forScheme scheme: ColorScheme) -> Color {
        let lightColor = Color.white
        let darkColor = Color.black
        
        switch scheme {
        case .light:
            return lightColor
        case .dark:
            return darkColor
        @unknown default:
            return lightColor
        }
    }
    
    static func myBackgroundButtonColor(forScheme scheme: ColorScheme) -> Color {
        let lightColor = Color.yellow
        let darkColor = Color.purple
        
        switch scheme {
        case .light:
            return lightColor
        case .dark:
            return darkColor
        @unknown default:
            return lightColor
        }
    }
}

