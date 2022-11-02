//
//  ContentView.swift
//  Picker_swiftUI_tutorial
//
//  Created by 양승은 on 2022/06/12.
//

import SwiftUI

enum colorValue {
    case 수박, 바나나, 사과
}

struct ContentView: View {
    
    @State private var selectionValue = 0
    
    let myColorArray = ["레드", "그린", "블루"]
    
    func chnageColor(index: Int) -> Color {
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    
    var body: some View {
        VStack{
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(self.chnageColor(index: selectionValue))
            
            Text("세그먼트 Value : \(selectionValue)")
            
            Text("선택된 색깔 : \(myColorArray[selectionValue])")
            
            Picker(selection: $selectionValue,
                   label: Text(""),
                   content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            }).pickerStyle(SegmentedPickerStyle())
            
            Picker(selection: $selectionValue,
                   label: Text(""),
                   content: {
                Text("레드").tag(0)
                Text("그린").tag(1)
                Text("블루").tag(2)
            })
            .frame(width: 100, height: 100)
            .clipped()
            .border(self.chnageColor(index: selectionValue), width: 10)
            .pickerStyle(.wheel)
            .padding(10)
            
        }.padding(.horizontal, 50)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
