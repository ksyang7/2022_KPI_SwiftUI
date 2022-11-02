//
//  ContentView.swift
//  menu_tutorial
//
//  Created by 양승은 on 2022/06/13.
//

import SwiftUI

var myPets = ["고양이", "개", "오리"]

struct ContentView: View {
    
    @State private var shouldShowAlert: Bool = false
    @State private var alertText: String = ""
    @State private var selected: Int = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing:20){
                Spacer()
                Text("\(myPets[selected])")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                Text("우측 상단의 땡땡이를 눌러 주세요")
                Spacer()
                Spacer()
            }
            
                .padding()
                .navigationTitle("아임스마트")
                .toolbar(content: {
                    ToolbarItem(
                        placement: .primaryAction,
                        content: {
                            Menu(content: {
                                Section{
                                    Button(action: {
                                        shouldShowAlert = true
                                        alertText = "정원같은 집에서 살고 싶다."
                                    }, label: {
                                        Label("화초 가꾸기", systemImage: "camera.macro")
                                    })
                                    Button(action: {
                                        shouldShowAlert = true
                                        alertText = "작은 쉼표 하나 찍자"
                                    }, label: {
                                        Label("외출하기", systemImage: "person.badge.key")
                                    })
                                }
                                
                                Section{
                                    Button(action: {
                                    }, label: {
                                        Label("파일저장", systemImage: "square.and.arrow.down.fill")
                                    })
                                    Button(action: {
                                    }, label: {
                                        Label("파일삭제", systemImage: "person.badge.key")
                                    })
                                }
                                
                                Picker(selection: $selected,
                                       label: Text("애완동물 선택")){
                                    ForEach(myPets.indices, id: \.self, content: { index in
                                        Text("\(myPets[index])").tag(index)
                                    })
                                }
                            }, // content
                                 label: {
                                Circle().foregroundColor(Color.purple)
                                    .frame(width: 50, height: 50)
                                    .overlay(
                                        Label("더보기",systemImage: "ellipsis")
                                            .foregroundColor(Color.white)
                                            .font(.system(size: 25))
                                    )
                                }//label
                            )//Menu
                        }// content
                    )// ToolbarItem
                })//Toolbar
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("알림"), message: Text("\(alertText)"), dismissButton: .default(Text("확인")))
            })//toolbar
        }//NavigationView
    }//View
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
