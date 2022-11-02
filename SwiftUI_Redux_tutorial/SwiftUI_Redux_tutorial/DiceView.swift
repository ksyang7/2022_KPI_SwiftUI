//
//  DiceView.swift
//  SwiftUI_Redux_tutorial
//
//  Created by 양승은 on 2022/06/15.
//

import Foundation
import SwiftUI

struct DiceView: View{
    //외부에서 environmentObject 로 연결됨
    @EnvironmentObject var store: AppStore
    
    @State private var shouldRoll = false
    
    //@State private var pressed = false
    
    var diceRollAnimateion: Animation{
        Animation.spring()
    }
    
    //주사위 굴리기 액션을 행한다.
    func rollTheDice(){
        print("fileID", #function, #line)
        self.shouldRoll.toggle()
        self.store.dispatch(action: .rollTheDice)
    }
    
    var body: some View {
        VStack{
            
            Text(self.store.state.currentDice)
                .font(.system(size: 300))
                .foregroundColor(Color.purple)
                .fontWeight(.bold)
                .rotationEffect(.degrees(shouldRoll ? 360 : 0))
                .animation(diceRollAnimateion)
            
            Button(action: {
                self.rollTheDice()
            }, label: {
                Text("랜덤 주사위 굴리기")
                    .fontWeight(.black)
                    
            }).buttonStyle(MyButtonStyle(color: .orange, type:.long ))
        }
    }
}

struct DiceView_Previews: PreviewProvider{
    static var previews: some View{
        DiceView()
    }
}
