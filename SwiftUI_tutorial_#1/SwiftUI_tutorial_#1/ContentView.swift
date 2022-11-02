//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 양승은 on 2022/06/06.
//

import SwiftUI

struct ContentView: View {
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                }//HStack
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow : Color.black)
                .onTapGesture {
                    print("HStack 이 클릭되었다.")
                    withAnimation{
                        self.isActivated.toggle()
                    }
                    
                }// HStack
                NavigationLink(destination: MyTextView(isActivated: $isActivated)){
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size:30))
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }.padding(.top, 50)
            }
            
        }
       
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
