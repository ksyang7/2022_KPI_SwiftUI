//
//  RandomUser+Response.swift
//  RandomUserApi
//
//  Created by 양승은 on 2022/06/17.
//

import Foundation

struct RandomUser: Codable, Identifiable {
    var id = UUID()
    var name: Name
    var photo: Photo
    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case photo = "picture"
    }
    
    static func getDummy() -> Self{
        return RandomUser(name: Name.getDummy(), photo: Photo.getDummy())
    }
    var profileImgUrl: URL{
        get{
            URL(string: photo.medium)!
            
        }
    }
    var description: String {
        return name.description
    }
}

// 비교를 위한 Equatable 프로토콜
extension RandomUser: Equatable {
    static func == (lhs: RandomUser, rhs: RandomUser) -> Bool {
        return lhs.id == rhs.id
    }
}

struct Name: Codable, CustomStringConvertible {
    var title: String
    var first: String
    var last: String
    var description: String{
        return "[\(title)] \(first) \(last)"
    }
    static func getDummy() -> Self{
        return Name(title: "스마트한", first: "양", last: "승은")
    }
}

struct Photo: Codable {
    var large: String
    var medium: String
    var thumbnail: String
    static func getDummy() -> Self {
        return Photo(large: "https://randomuser.me/api/portraits/men/75.jpg",
                     medium:  "https://randomuser.me/api/portraits/med/men/75.jpg",
                     thumbnail: "https://randomuser.me/api/portraits/thumb/men/75.jpg")
    }
}

struct Info: Codable, CustomStringConvertible {
    var seed: String
    var resultsCount: Int
    var page: Int
    var version: String
    private enum CodingKeys:String, CodingKey{
        case seed = "seed"
        case resultsCount = "results"
        case page = "page"
        case version = "version"
    }
    var discription: String {
        return "seed: \(seed) / version: \(version) / resultsCount: \(resultsCount) / page: \(page)"
    }
}

struct RandomUserResponse: Codable, CustomStringConvertible {
    var results: [RandomUser]
    var info: Info
    private enum CodingKeys: String, CodingKey {
        case results, info
    }
    
    var description: String{
        return "results.count: \(results.count) / Info : \(info.seed)"
    }
}
