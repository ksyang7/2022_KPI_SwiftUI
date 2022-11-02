//
//  ContentView.swift
//  Toast_Popup_tutorial
//
//  Created by 양승은 on 2022/06/12.
//

import SwiftUI
import ExytePopupView

struct ContentView: View {

    @State var shouldShowButtomSolidMessage: Bool = false
    @State var shouldShowButtomToastMessage: Bool = false
    @State var shouldShowTopSolidMessage: Bool = false
    @State var shouldShowTopToastMessage: Bool = false
    @State var shouldShowPopup: Bool = false

    func createButtomSolidMessage() -> some View{
        HStack(spacing: 10){
            Image(systemName: "book.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            VStack(alignment: .leading, spacing: 0){
                Text("토스트dddd 메시지 입니다.")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    
                Text("토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.")
                    .lineLimit(2)
                    .foregroundColor(.white)
                
                Divider().opacity(0)
            }
        }
        .padding(.vertical, 5)
        .padding(.horizontal,10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.bottom, UIApplication.shared.windows.first? .safeAreaInsets.bottom == 0 ? 0 : 15)
        .background(Color.purple)

    }
    
    func createTopSolidMessage() -> some View {
        HStack(alignment: .center, spacing: 10){
            Image("woman")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 5){
                Text("신비한 눈")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    
                Text("토스트 메시지 입니다.토스트 메시지 입니다.\n토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                
                Divider().opacity(0)
            }
        }
            .padding(.vertical, 5)
            .padding(.horizontal,10)
            .frame(width: UIScreen.main.bounds.width)
            .padding(.top, UIApplication.shared.windows.first? .safeAreaInsets.bottom == 0 ? 20 : 35)
            .background(Color.blue)

    }
    func createTopToastMessage() -> some View{
        HStack(alignment: .top, spacing: 10){
            Image(systemName: "paperplane.fill")
                .font(.system(size: 25))
                .padding(.horizontal, 5)
                .foregroundColor(Color.white)
            VStack(alignment: .leading, spacing: 2){
                Text("즐거운 하루되세요")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                Text("보람찬 하루되세요")
                    .font(.system(size: 14))
                    .lineLimit(1)
                    .foregroundColor(.white)
                
//                Divider().opacity(0)
            }
            .padding(.trailing, 15)
        }
        .padding(.vertical,5)
        .padding(.horizontal, 10)
        .background(Color.green)
        .cornerRadius(25)
        .padding(.top, UIApplication.shared.windows.first? .safeAreaInsets.bottom == 0 ? 20 : 35)
    }
    func createButtonToastMessage() -> some View{
        HStack(alignment: .top, spacing: 10){
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .offset(y:10)
                .frame(width: 60, height: 60)
                .cornerRadius(10)
            VStack(alignment: .leading){
                Text("내 고양이")
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    
                Text("토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.")
                    .lineLimit(2)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                
                Divider().opacity(0)
            }
        }
        .padding(15)
        .frame(width: 300)
        .background(Color.purple)
        .cornerRadius(15)
    }
    
    func createPopup() -> some View{
        
        VStack(alignment: .center){
                Image("user_02")
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fit)
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                Text("여인")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    
                Text("토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.토스트 메시지 입니다.")
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9))
                    .multilineTextAlignment(.center)
            
                Spacer().frame(height:10)
            
                Button(action: {
                    self.shouldShowPopup = false
                }){
                    Text("닫기")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                .frame(width: 100, height: 40)
                .background(Color.white)
                .cornerRadius(20.0)
            }
            .padding(.horizontal,10)
            .frame(width: 300, height: 400)
            .background(Color(hexcode: "8227b0"))
            .cornerRadius(10)
            .shadow(radius: 10.0)
    }
    
    
    var body: some View {
        ZStack{
            VStack(spacing:10){
                
                Spacer()
                Button(action: {
                    self.shouldShowButtomSolidMessage = true
                }, label: {
                    Text("바텀 솔리드 메세지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                })
                Button(action: {
                    self.shouldShowButtomToastMessage = true
                }, label: {
                    Text("바텀 토스트 메세지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                        
                        
                })
                Button(action: {
                    self.shouldShowTopSolidMessage = true
                }, label: {
                    Text("탑 솔리드 메세지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                        
                })
                
                Button(action: {
                    self.shouldShowTopToastMessage = true
                }, label: {
                    Text("탑 토스트 메세지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                        
                })
                
                Button(action: {
                    self.shouldShowPopup = true
                }, label: {
                    Text("팝업")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color(hexcode: "8227b0"))
                        .cornerRadius(10)
                        
                        
                })
                Spacer()
             }//vstack
            
        }//Zstack
        .edgesIgnoringSafeArea(.all)
        .popup(isPresented: $shouldShowButtomSolidMessage, type: .toast, position: .bottom, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createButtomSolidMessage()
        })
        .popup(isPresented: $shouldShowButtomToastMessage, type: .floater(verticalPadding: 20), position: .bottom, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createButtonToastMessage()
        })
        .popup(isPresented: $shouldShowTopSolidMessage, type: .toast, position: .top, animation: .easeInOut, autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createTopSolidMessage()
        })
        .popup(isPresented: $shouldShowTopToastMessage, type: .floater(verticalPadding: 20), position: .top, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createTopToastMessage()
        })
        .popup(isPresented: $shouldShowPopup, type: .default, position: .bottom, animation: .spring(), autohideIn: 2, closeOnTap: false, closeOnTapOutside: true, view: {
            self.createPopup()
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
