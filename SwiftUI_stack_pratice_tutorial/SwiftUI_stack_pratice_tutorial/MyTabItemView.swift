//
//  MyTabItemView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by μμΉμ on 2022/06/08.
//

import SwiftUI

struct MyTabItemView: View{
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
            Image(systemName: "airplane")
                .background(Color.yellow)
            //Text("1λ²")
        }
        
    }
}

struct MyTabItemView_Perviews: PreviewProvider {
    static var previews: some View {
        MyTabItemView()
    }
}
