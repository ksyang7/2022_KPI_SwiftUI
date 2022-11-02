//
//  ContentView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/06.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden : Bool = false
    
    var body: some View {
        
        NavigationView{
            
            ZStack(alignment: .bottomTrailing){
               
                VStack(alignment: .leading, spacing: 0){
                    HStack{
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }

                        Spacer()
                        
                        NavigationLink(destination: MyProfileView(isNavigationBarHidden: self.$isNavigationBarHidden)
                        ){
                            Image(systemName: "person.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(Color.black
                                )
                        }
                    }.padding(20)
                                       
                    Text("아임스마트 ToDo")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 20)
                    
                    ScrollView{
                         VStack{
                            MyProjectCard()
    //                        MyBasicCard()
                            MyCard(icon: "tray.fill", title: "정리정돈", start: "3PM", end: "5PM", bgColor: Color.blue)
                             MyCard(icon: "iphone.homebutton.circle.fill", title: "Swift 학습", start: "5PM", end: "6PM", bgColor: Color.orange)
                             MyCard(icon: "mouth.fill", title: "식사", start: "6PM", end: "7PM", bgColor: Color.green)
                             MyCard(icon: "figure.walk", title: "휴식", start: "7PM", end: "8PM", bgColor: Color.pink)
                         }.padding()
                    }
                  
                }
                
               
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    )
                    .padding(10)
                    .shadow(radius: 20)
            } // ZStack
            
            .navigationBarTitle("")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
