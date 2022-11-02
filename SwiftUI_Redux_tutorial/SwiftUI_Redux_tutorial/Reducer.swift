//
//  Reducer.swift
//  SwiftUI_Redux_tutorial
//
//  Created by 양승은 on 2022/06/15.
//

import Foundation
//(inout State, Action) -> void 해당 클로저 자체를 별칭으로 리듀서로 칭함,  State와 Action을 가지고 있음
//typelias 별칭으로 만든다.
typealias Reducer <State, Action> = (inout State, Action) -> Void

//필터링 하는 메소드
func appReducer(_ state: inout AppState, _ action: AppAction) -> Void {
    //들어오는 액션에 따라 분기 처리 - 즉 필터링
    switch action{
    case.rollTheDice:
        // 앱의 상태를 변경한다
        state.currentDice = ["⚀","⚁","⚂","⚃","⚄","⚅"].randomElement() ?? "⚅"
    }
}
