//
//  WeaklyView.swift
//  State_Binding_EnvironmentObject_tutorial
//
//  Created by 양승은 on 2022/06/20.
//

import Foundation
import SwiftUI

struct WeaklyView: View {
    
    @Binding var count: Int
    
    init (count: Binding<Int> = .constant(99)){
        _count = count
    }
    var body: some View {
        VStack{
            Text("주말에도 행복한 코딩! \(count)")
                .padding()
            
            Button(action: {
                count = count + 1
            }, label: {
                Text("카운트 앱")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(10.0)
            })
        }
    }
}
