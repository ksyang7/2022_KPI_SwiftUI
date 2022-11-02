//
//  ContentView.swift
//  deeplink_swiftUI_tutorial
//
//  Created by 양승은 on 2022/06/13.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab = TabIdenifier.todos
    
    var body: some View {
        TabView(selection: $selectedTab,
                content: {
                    TodoView()
                        .tabItem{
                            VStack{
                                Image(systemName: "list.bullet")
                                Text("할일목록")
                            }
                            
                        }.tag(TabIdenifier.todos)
                    
                    PorfileView()
                        .tabItem{
                            VStack{
                                Image(systemName: "person.circle.fill")
                                Text("프로필")
                            }
                        }.tag(TabIdenifier.profile)
                })
        .onOpenURL(perform: { url in
            // 열려야하는 url 처리
            guard let tabId = url.tabIdentifier else {return}
            selectedTab = tabId
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//어느 탭이 선택되었는지 여부
enum TabIdenifier: Hashable{
    case todos, profile
}
//어느 페이지를 보여줘야하는지
enum PageIdentifier: Hashable{
    case todoItem(id:UUID)
}

extension URL {
    // info에서 추가한 딥링크라 들어왔는지 여부
    var isDeeplink: Bool {
        return scheme == "deeplink-swiftUI"
    }
    
    // url 에 따라 어느 탭을 보여줘야하는지 가져오기
    var tabIdentifier: TabIdenifier? {
        guard isDeeplink else {return nil}
        
        // deeplink-swiftUI://todos
        switch host {
            case "todos":
                return .todos
            case "profile":
                return .profile
            default:
                return nil
        }
    }
    // deeplink-swiftUI://todos/todo_ID
    var detailPage: PageIdentifier?{
        guard let tabId = tabIdentifier,
              pathComponents.count > 1,
              let uuid = UUID(uuidString: pathComponents[1])
                else { return nil }
        switch tabId {
        case .todos:
            return .todoItem(id: uuid)
        default:
            return nil
        }
    }
    
}
