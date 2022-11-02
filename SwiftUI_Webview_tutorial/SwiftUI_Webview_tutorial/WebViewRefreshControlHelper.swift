//
//  WebViewRefreshController.swift
//  SwiftUI_Webview_tutorial
//
//  Created by 양승은 on 2022/06/29.
//

import Foundation
import UIKit

class WebViewRefreshControlHelper{
   
    // MARK: Properties
    var refreshControl: UIRefreshControl?
    var viewModel: WebViewModel?
    
    //리프레시 컨트롤에 붙일 메소드
    @objc func didRefresh(){
        print("WebViewRefreshControlHelper - didRefresh() called")
        
        guard let refreshControl = refreshControl,
            let viewModel = viewModel else {
            print("refreshControl, viewModel 이 없다.")
                return
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8, execute: {
            print("리프레시 액션이 들어왔다.")
            // 뷰 모델에 리프레시 하라고 알려주기
            viewModel.webNavigationSubjet.send(.REFRESH)
            
            // 리프레시 종료
            refreshControl.endRefreshing()
        })
    }
}
