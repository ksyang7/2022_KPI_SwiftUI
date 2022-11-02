//
//  MyNavigationView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by 양승은 on 2022/06/07.
//

import SwiftUI

struct MyNavigationView : View{
    var body: some View{
        NavigationView{
//            Text("MyNavigationView")
            MyList()
                .navigationBarTitle("안녕하세요!")
                //.navigationBarTitle("안녕하세요!", displayMode: .large)
                .navigationBarItems(leading:
                                        Button(action: {
                                                print("호호")
                                            }){
                                                Text("하하")
                                            }
                                    , trailing:
                                        NavigationLink(destination: Text("넘어온 화면입니다.")){
                                            //Text("navigation")
                                            Image(systemName: "bookmark.fill")
                                                .font(.system(size: 20))
                                                .foregroundColor(.black)
                                            }
                                    )
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
