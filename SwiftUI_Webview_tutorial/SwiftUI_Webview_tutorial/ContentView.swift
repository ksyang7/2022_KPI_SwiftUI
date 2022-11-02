//
//  ContentView.swift
//  SwiftUI_Webview_tutorial
//
//  Created by 양승은 on 2022/06/06.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var myWebVM : WebViewModel
    
    @State var jsAlert: JsAlert?
    @State var textString = ""
    @State var shouldShowAlert = false
    @State var isLoding: Bool = false
    @State var webTitle: String = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    MyWebview(urlToLoad: "https://ksyang7.github.io/jsWebView/")
                    
                    WebViewBottomTabber
                } // VStack
                .navigationBarTitle(Text(webTitle), displayMode: .inline)
                .navigationBarItems(
                    leading: siteMenu,
                    trailing:
                        Button("iOS -> Js"){
                            print("iOS -> Js 버튼 클릭")
                            self.shouldShowAlert.toggle()
                        }
                )
                .alert(item: $jsAlert, content: { alert in
                    createAlert(alert)
                })
                
                if self.shouldShowAlert{
                    createTextAlert()
                }
                if self.isLoding{
                    LoadingScreenView()
                }
//                Text(textString)
//                    .font(.system(size: 26))
//                    .fontWeight(.bold)
//                    .background(Color.yellow)
//                    .offset(y: -(UIScreen.main.bounds.height * 0.3))
            } // ZStack
            .onReceive(myWebVM.webSiteTitleSubjet, perform: { receivedWebTitle in
                print("ContentView - receivedWebTitle: ", receivedWebTitle)
                self.webTitle = receivedWebTitle
            })
            .onReceive(myWebVM.jsAlertEvent, perform: { jsAlert in
                print("ContentView - jsAlert: ", jsAlert)
                self.jsAlert = jsAlert
            })
            .onReceive(myWebVM.shouldShowIndicator, perform: { isLoading in
                print("ContentView - jsAlert: ", isLoading)
                self.isLoding = isLoading
            })

        } // NavigationView
        
    } // body
    
    // 사이드 메뉴
    var siteMenu: some View {
        Text("사이트 이동")
            .foregroundColor(.blue)
            .contextMenu(ContextMenu(menuItems: {
                Button {
                    print("승은 사이트 이동 버튼 클릭")
                    self.myWebVM.changedUrlSubject.send(.SMART)
                } label: {
                    Text("SMART 이동")
                    Image(systemName: "person.crop.square")
                }
                
                Button{
                    print("네이버 사이트 이동 버튼 클릭")
                    self.myWebVM.changedUrlSubject.send(.NAVER)
                } label: {
                    Text("네이버 이동")
                    Image("naver")
                }
                
                Button{
                    print("구글 사이트 이동 버튼 클릭")
                    self.myWebVM.changedUrlSubject.send(.GOOGLE)
                } label: {
                    Text("구글 이동")
                    Image("google")
                }
            }))
        
    }
    
    // 웹뷰 바텀 탭바
    var WebViewBottomTabber : some View {
        VStack{
            Divider()
            HStack{
                Spacer()
                Button(action: {
                    print("뒤로가기")
                    self.myWebVM.webNavigationSubjet.send(.BACK)
                }, label: {
                    Image(systemName: "backward.fill")
                        .foregroundColor(.gray)
                })
                Group{
                    Spacer()
                    Divider()
                    Spacer()
                }
                Button(action: {
                    print("앞으로 가기")
                    self.myWebVM.webNavigationSubjet.send(.FORWARD)
                }, label: {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.gray)
                })
                Group{
                    Spacer()
                    Divider()
                    Spacer()
                }
                Button(action: {
                    print("새로고침")
                    self.myWebVM.webNavigationSubjet.send(.REFRESH)
                }, label: {
                    Image(systemName: "arrow.clockwise")
                        .foregroundColor(.gray)
                })
                Spacer()
            }.frame(height: 45)
            Divider()
        }
    }
        
} // view

extension ContentView{
    func createAlert(_ alert: JsAlert) -> Alert{
        Alert(title: Text(alert.type.description),
              message: Text(alert.message),
              dismissButton: .default(Text("확인"), action: {print("알림창 확인 버튼이 클릭 되었다.")}))
    }
    
    //텍스트 입력 얼럿창
    func createTextAlert() -> MyTextAlertView{
        MyTextAlertView(textString: $textString, showAlert: $shouldShowAlert, title: "iOS -> JS 보내기", message: "")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
