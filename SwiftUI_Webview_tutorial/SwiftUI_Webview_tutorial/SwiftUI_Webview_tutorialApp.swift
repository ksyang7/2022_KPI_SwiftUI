//
//  SwiftUI_Webview_tutorialApp.swift
//  SwiftUI_Webview_tutorial
//
//  Created by 양승은 on 2022/06/06.
//

import SwiftUI

@main
struct SwiftUI_Webview_tutorialApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(WebViewModel())
        }
    }
}
