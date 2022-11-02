//
//  ContentView.swift
//  State_Binding_EnvironmentObject_tutorial
//
//  Created by 양승은 on 2022/06/20.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: MyViewModel
    @State var count = 0
    @State var appTitle: String = "양승은"
    

    var body: some View {
       
        TabView{
            VStack{
                Text("오늘도 행복한 코딩! \(count)")
                    .padding()
                
                Button(action: {
                    count = count + 1
                    appTitle = "스마트의 일상 \(count)"
                }, label: {
                    Text("카운트 앱")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10.0)
                })
            }
            .tabItem{Label("오늘도 ", systemImage: "camera.macro")}
            
            TodayView(count: $count)
                .tabItem{Label("내일도 ", systemImage: "sun.max.fill")}

            WeaklyView(count: $count)
                .tabItem{Label("주말에도 ", systemImage: "wind.snow")}

        } // TabView
        .overlay{
            Text(appTitle).offset(y: -(UIScreen.main.bounds.height * 0.4))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
