//
//  Picker_selectList.swift
//  Picker_swiftUI_tutorial
//
//  Created by 양승은 on 2022/06/12.
//

import SwiftUI

struct Picker_selectList:View {
    
    @State private var selectionValue = 0
    @State private var randomNumber = Int()
    @State private var number: [Int] = []
    
    
    
    var body: some View{
        VStack{
            Text("filteredValue: 0")
            
            Picker(selection: $selectionValue,
                   label: Text(""),
                   content: {
                        Text("초등학교").tag(0)
                        Text("중학교").tag(1)
                        Text("고등학교").tag(2)
                    }
            ).pickerStyle(SegmentedPickerStyle())
            
            ForEach (1..<20) {number in
                Text ("nMe: 호호 \(number)")
                
                
            }
            
        }
    }
}

struct Picker_selectList_Proviews: PreviewProvider{
    static var previews: some View{
        Picker_selectList()
    }
}
