//
//  AppState.swift
//  SwiftUI_Redux_tutorial
//
//  Created by μμΉμ on 2022/06/15.
//

import Foundation

struct AppState {
    var currentDice: String = ""{
        didSet{
            print("currentDice: \(currentDice)", #fileID, #function)
        }
    }
}
