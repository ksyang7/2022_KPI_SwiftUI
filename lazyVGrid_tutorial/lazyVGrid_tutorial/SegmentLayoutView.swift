//
//  SegmentLayoutView.swift
//  lazyVGrid_tutorial
//
//  Created by 양승은 on 2022/06/14.
//

import Foundation
import SwiftUI

enum LayoutType: CaseIterable {
    case table, gride, multiple
}

extension LayoutType {
    //레이아웃 타입에 대한 컬럼이 자동 설정된다
    var columns: [GridItem] {
        switch self {
        case .table:
            return [GridItem(.flexible())]
        case .gride:
            return [GridItem(.flexible()),
                    GridItem(.flexible())]
        case .multiple:
            return [GridItem(.adaptive(minimum: 100))]
        }
    }
}

struct SegmentLayoutView: View {
    
    @State private var selectedLayoutTypes:LayoutType = .gride
    @State var dummyDatas = MyModel.dummyDataArray
    
    var body: some View {
        VStack{
            Picker(selection: $selectedLayoutTypes,
                   label: Text(""),
                   content: {
                ForEach(LayoutType.allCases, id: \.self, content: { layoutType in
                        switch layoutType {
                        case .table: Image(systemName: "list.dash")
                        case .gride: Image(systemName: "square.grid.2x2")
                        case .multiple: Image(systemName: "square.grid.3x3")
                        } // layoutType
                    
                    }//content
                )//ForEach
            })//Picker
            .pickerStyle(SegmentedPickerStyle())
            
            ScrollView{
                LazyVGrid(columns: selectedLayoutTypes.columns, content: {
                    ForEach(dummyDatas){ dataItem in
                        switch selectedLayoutTypes {
                        case .table:
                            MyCard(icon:"book.fill", title: "책읽기", start: "1PM", end: "3PM", bgColor: Color.green)
                        case .gride:
                            Rectangle().frame(height: 100)
                                .foregroundColor(.orange)
                                .overlay(
                                    VStack{
                                        Circle().frame(height: 50)
                                            .foregroundColor(.pink)
                                        Text("\(dataItem.title)")
                                            .fontWeight(.bold)
                                            .font(.system(size: 15))
                                        Text("\(dataItem.content)")
                                            .font(.system(size: 13))
                                    }
                                )
                            
                        case .multiple:
                            Rectangle().frame(height: 100)
                                .foregroundColor(.blue)
                        }
                        
                        
                        
                        
                    }
                    
                }).animation(.default)
                
            }//ScrollView
            
            

        } //VStack
    }
}

struct SegmentLayoputView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentLayoutView()
    }
}
