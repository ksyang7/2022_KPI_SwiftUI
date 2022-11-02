//
//  ContentView.swift
//  lazyVGrid_tutorial
//
//  Created by 양승은 on 2022/06/14.
//

import SwiftUI

struct MyModel: Identifiable{
    let id = UUID()
    let title: String
    let content: String
}

extension MyModel {
    static var dummyDataArray: [MyModel] {
        (1...2000).map { (number: Int) in
            MyModel(title: "타이틀 : \(number) 번", content: "컨텐츠 : \(number)")
        }
    }
}

struct ContentView: View {
    
    var dummyDataArray = MyModel.dummyDataArray
    @State private var selected: Int = 0
    
    var body: some View {
        VStack{
            Picker(selection: $selected,
                   label: Text("메뉴 선택")){
                    Image(systemName: "tortoise.fill").tag(0)
                    Image(systemName: "pawprint").tag(1)
                    Image(systemName: "ant.fill").tag(2)
               }
            .pickerStyle(SegmentedPickerStyle())
            
            
            ScrollView{
                LazyVGrid(columns: [
                    GridItem(.fixed(50)),
                    GridItem(.adaptive(minimum: 50)),
                    GridItem(.flexible(minimum: 50))
                ], content: {
                    ForEach(dummyDataArray, content: {(dataItem: MyModel) in
                        Rectangle().foregroundColor(Color.blue)
                            .frame(height: 120)
                            .overlay(Text("\(dataItem.title)"))
                        
                    })
                })
            }
        } //VStack
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
