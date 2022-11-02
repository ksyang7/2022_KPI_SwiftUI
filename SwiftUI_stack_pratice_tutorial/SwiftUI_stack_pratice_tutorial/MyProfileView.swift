//
//  MyProfileView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/07.
//

import SwiftUI

struct MyProfileView: View {
    
    @State var shouldShowAlert: Bool = false
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)){
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        ScrollView{
            VStack {
                MyCircleImageView(imageString: "imsmart")
                    .padding(.vertical, 20)
                
                Text("아임스마트")
                    .font(.system(size: 30))
                    .fontWeight(.black)
                
                Spacer().frame(height: 20)
                
                Text("구독 좋아요 부탁드립니다.")
                    .font(.system(size: 25))
                    .fontWeight(.black)
                
                HStack{
                    Button(action: {
                        print("확인 버튼이 클릭 되었습니다.")
                        self.shouldShowAlert = true
                    }){
                        Text("구독하러 가기")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
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
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                    }.alert(isPresented: $shouldShowAlert){
                        Alert(title: Text("오픈깨톡방 가기 버튼이 클릭 되었습니다."))
                    }
                }// Hstack
                .padding(20)
                
                Spacer()
            } //Vstack

        } // ScrollView
        .navigationBarTitle("내 프로필")
        .navigationBarItems(trailing:
                                NavigationLink(
                                    destination: Text("설정화면 입니다.")
                                        .font(.largeTitle)
                                        .fontWeight(.black)
                                ){
                                     Image(systemName: "gear")
                                        .font(.largeTitle)
                                        .foregroundColor(Color.black)
                                    })
        .onAppear{
            self.isNavigationBarHidden = false
        }
    }
}
    
struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
