//
//  AppState.swift
//  SwiftUI_Redux_tutorial
//
//  Created by 양승은 on 2022/06/15.
//

import Foundation

struct AppState {
    var currentDice: String = ""{
        didSet{
            print("currentDice: \(currentDice)", #fileID, #function)
        }
    }
}
