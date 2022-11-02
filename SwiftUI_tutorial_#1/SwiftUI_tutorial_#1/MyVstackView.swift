//
//  MyVstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by 양승은 on 2022/06/06.
//
import SwiftUI

struct MyVstackView: View {
    
    @Binding
    var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)){
        _isActivated = isActivated
    }
    
    var body: some View {
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        } //Vstack
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
    }
}

struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
