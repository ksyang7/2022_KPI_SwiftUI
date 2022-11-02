//
//  RandomUserViewModel.swift
//  RandomUserApi
//
//  Created by 양승은 on 2022/06/17.
//

import Foundation
import Combine
import Alamofire
import SwiftUI

class RandomUserViewModel: ObservableObject {
    
    var subscription = Set<AnyCancellable>()
    
    @Published var randomUsers = [RandomUser]()
    
    var refreshActionSubject = PassthroughSubject<(), Never>()
    var fetchMoreActionSubject = PassthroughSubject<(), Never>()
    
    @Published var pageInfo: Info? {
        didSet{
            print("pageInfo : \(pageInfo)")
        }
    }
    @Published var isLoading: Bool = false
        
    init(){
        print(#fileID, #function, #line, "")
        fetchRandomUsers()
        
        refreshActionSubject.sink{[weak self] _ in
            guard let self = self else{return}
            print("RandumUserViewModel - init - refreshActionSubject")
            self.fetchRandomUsers()
        }.store(in: &subscription)
        
        fetchMoreActionSubject.sink{[weak self] _ in
            guard let self = self else{return}
            print("RandumUserViewModel - init - fetchMoreActionSubject")
            if !self.isLoading {
                self.fetchMore()
            }
        }.store(in: &subscription)
    }
    
    fileprivate func fetchMore(){
        print(#fileID, #function, #line, "")
        guard let currentPage = pageInfo?.page else {
            print("페이지 정보가 없습니다.")
            return
        }
        
        self.isLoading = true
        
        let pageToLoad = currentPage + 1
        AF.request(RandomUserRouter.getUsers(page: pageToLoad))
            .publishDecodable(type: RandomUserResponse.self) //results
            .compactMap{$0.value} // RandomUserResponse
            .sink(receiveCompletion: { completion in
                print("데이터스트림 완료")
                self.isLoading = false
            }, receiveValue: { receivedValue in
                print("받은 값 : \(receivedValue.results.count)")
                self.randomUsers += receivedValue.results
                self.pageInfo = receivedValue.info
            }).store(in: &subscription)
    }
    
    
    fileprivate func fetchRandomUsers(){
        print(#fileID, #function, #line, "")
//        AF.request(baseUrl)
        AF.request(RandomUserRouter.getUsers())
            .publishDecodable(type: RandomUserResponse.self) //results
            .compactMap{$0.value} // RandomUserResponse
            //.map{$0.results} // [RandomUser]
            .sink(receiveCompletion: { completion in
                print("데이터스트림 완료")
            }, receiveValue: { receivedValue in
                print("받은 값 : \(receivedValue.results.count)")
                self.randomUsers = receivedValue.results
                self.pageInfo = receivedValue.info
            }).store(in: &subscription)
        
    }
    
}
