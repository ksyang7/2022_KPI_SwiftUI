//
//  SwiftUI_Webview_tutorialApp.swift
//  SwiftUI_Webview_tutorial
//
//  Created by μμΉμ on 2022/06/06.
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
