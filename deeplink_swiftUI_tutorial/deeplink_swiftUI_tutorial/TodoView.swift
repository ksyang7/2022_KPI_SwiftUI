//
//  TodosView.swift
//  deeplink_swiftUI_tutorial
//
//  Created by 양승은 on 2022/06/13.
//

import Foundation
import SwiftUI

struct TodoItem: Identifiable, Hashable {
    var id: UUID
    var title: String
}

func prepareData() -> [TodoItem]{
    print("prepareData")
    var newList = [TodoItem]()
    for i in 0...20 {
        let newTodo = TodoItem(id: UUID(), title: "내 할일 : \(i)")
        newList.append(newTodo)
    }
    return newList
}

struct TodoView: View {
    
    @State var todoItems = [TodoItem]()
    
    init(){
        _todoItems = State(initialValue: prepareData())
    }
    
    var body: some View {
        NavigationView {
            List(todoItems) { todoItem in
                NavigationLink(
                    destination: Text("\(todoItem.title)"),
                    label: {
                        Text("\(todoItem.title)")
                    })
            }.navigationTitle(Text("할일 목록"))
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}
