//
//  MyFilteredList.swift
//  Picker_swiftUI_tutorial
//
//  Created by 양승은 on 2022/06/12.
//

import SwiftUI

enum School: String, CaseIterable {
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
}
struct MyFriend : Identifiable, Hashable{
    var id = UUID()
    var name : String
    var school : School
}

struct MyFilteredList: View{
    
    @State private var filteredValue = School.elementary
    @State private var myFriendList = [MyFriend]()
    
    func preparedData() -> [MyFriend]{
        var newList = [MyFriend]()
        for i in 0...20{
            let newFriend = MyFriend(name: "내 친구 \(i)", school: School.allCases.randomElement()!)
            newList.append(newFriend)
        }
        return newList
    }
    
    init() {
        _myFriendList = State(initialValue: preparedData())
    }
    
    var body: some View{
        VStack{
            Text("선택된 필터 : \(filteredValue.rawValue)")
            
            Picker(selection: $filteredValue,
                   label: Text(""),
                   content: {
                        Text("초등학교").tag(School.elementary)
                        Text("중학교").tag(School.middle)
                        Text("고등학교").tag(School.high)
            }).pickerStyle(SegmentedPickerStyle())
            
            List{
                ForEach(myFriendList.filter {
                    $0.school == filteredValue
                }){ friendItem in
                    GeometryReader{ GeometryProxy in
                        HStack{
                            Text("name : \(friendItem.name)")
                                .frame(width: GeometryProxy.size.width / 2)
                            Divider()
                            Text("school: \(friendItem.school.rawValue)")
                                .frame(width: GeometryProxy.size.width / 2)
                        }
                    }
                }
            }
        }
    }
}

struct MyFilteredList_Previews: PreviewProvider{
    static var previews: some View {
        MyFilteredList()
    }
}
