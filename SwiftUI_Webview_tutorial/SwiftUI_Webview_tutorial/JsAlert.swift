//
//  JsAlert.swift
//  SwiftUI_Webview_tutorial
//
//  Created by 양승은 on 2022/06/25.
//

import Foundation

// 자바스크립트 알림창 에러
struct JsAlert: Identifiable{
    enum TYPE: CustomStringConvertible{
        case JS_ALERT, JS_BRIDGE, BLOCKED_SITE
        var description: String {
            switch self {
            case .JS_ALERT: return "JS_ALERT 타입"
            case .JS_BRIDGE: return "JS_BRIDGE 타입"
            case .BLOCKED_SITE: return "차단된 사이트"
            }
        }
    }
    
    let id: UUID = UUID()
    
    var message: String =  ""
    
    var type: TYPE
    
    init(_ message: String? = nil, _ type: TYPE ){
        self.message = message ?? "메세지 없음"
        self.type = type
    }
}
