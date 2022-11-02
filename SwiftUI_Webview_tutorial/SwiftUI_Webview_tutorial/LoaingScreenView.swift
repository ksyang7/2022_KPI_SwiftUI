//
//  LoaingScreenView.swift
//  SwiftUI_Webview_tutorial
//
//  Created by 양승은 on 2022/06/25.
//

import Foundation
import SwiftUI

struct LoadingScreenView: View{
    var body: some View{
        ZStack(alignment: .center, content: {
            Color.black
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            LoadingIndicatorView()
        })
    }
}
