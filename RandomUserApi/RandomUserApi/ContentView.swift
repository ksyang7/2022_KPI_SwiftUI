//
//  ContentView.swift
//  RandomUserApi
//
//  Created by 양승은 on 2022/06/16.
//

import SwiftUI
import UIKit
import Introspect

class RefreshControlHelper {
    //MARK: Properties
    var parentContentView : ContentView?
    var refreshControl : UIRefreshControl?
    
    @objc func didRefresh(){
        print(#fileID, #function, #line)
        guard let parentContentView = parentContentView,
            let refreshControl = refreshControl
        else {
            print("parentContentView, refreshcontrol 가 nil 입니다.")
            return
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.7, execute: {
            print("리프레시가 되었다.")
            
            //api 다시 호출하기
//            parentContentView.randomUserViewModel.fetchRandomUsers()
            parentContentView.randomUserViewModel.refreshActionSubject.send()
            refreshControl.endRefreshing()
            
        })
    }
}

struct MyBottomProgressView:View{
    var body: some View{
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: Color.gray)
            ).scaleEffect(1.7, anchor: .center)
    }
}

struct ContentView: View {
    
    @ObservedObject var randomUserViewModel =  RandomUserViewModel()
    
    let refreshControlHelper = RefreshControlHelper()
    
    var body: some View {
        
        List(randomUserViewModel.randomUsers){aRandomUser in
            
            RandomUserRowView(aRandomUser)
                .onAppear{
                    fetchMoreData(aRandomUser)
                }
        }
        .introspectTableView{self.configureRefreshControl($0)}
        
        // 데이터 로딩 중이라면
        if randomUserViewModel.isLoading {
            MyBottomProgressView()
        }
    }
}

//MARK: - Helper Method
extension ContentView {
    fileprivate func fetchMoreData(_ randomUser: RandomUser){
        if self.randomUserViewModel.randomUsers.last == randomUser{
            print("마지막에 도착했다.")
            randomUserViewModel.fetchMoreActionSubject.send()
        }
    }
    
    
    fileprivate func configureRefreshControl(_ tableView: UITableView){
        print(#fileID, #function, #line, "")
        let myRefresh = UIRefreshControl()
//        myRefresh.tintColor = UIColor.yellow
        refreshControlHelper.refreshControl = myRefresh
        refreshControlHelper.parentContentView = self
        myRefresh.addTarget(refreshControlHelper, action: #selector(RefreshControlHelper.didRefresh), for: .valueChanged)
        
        tableView.refreshControl = myRefresh
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
