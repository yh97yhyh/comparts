//
//  User.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

struct User: Identifiable, Codable {
    var id: Int
    var userId: String
    var name: String
    var nickname: String
    var profile: String?
    var phone: String
}

extension User {
    static let MOCK_USERS: [User] = [
        .init(id: 0, userId: "naruto01", name: "나루토", nickname: "조립컴맞추자", profile: "naruto-profile", phone: "01012341234"),
        .init(id: 1, userId: "sasuke01", name: "사스케", nickname: "글카내놔", profile: "sasuke-profile", phone: "01012120909"),
    ]
}
