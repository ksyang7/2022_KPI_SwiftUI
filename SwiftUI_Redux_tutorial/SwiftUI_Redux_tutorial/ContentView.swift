//
//  ContentView.swift
//  SwiftUI_Redux_tutorial
//
//  Created by 양승은 on 2022/06/15.
//

import SwiftUI

struct ContentView: View {
    // 스토어 생성
    let store = AppStore(state: AppState.init(currentDice: "⚀"), reducer: appReducer(_:_:))
    
    var body: some View {
        // 서브뷰에 옵저버블 오브젝트를 연결한다.
        DiceView().environmentObject(store)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //DiceView()
    }
}
