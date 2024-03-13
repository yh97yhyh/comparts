//
//  User.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    var id: Int
    var mail: String
    var name: String
    var nickName: String
    var phone: String
    let accessToken: String
}

extension User {
    static let MOCK_USER: User = .init(id: 0, mail: "naruto01", name: "나루토", nickName: "조립컴맞추자", phone: "010-1234-1234", accessToken: "")
    static let MOCK_USERS: [User] = [
        .init(id: 0, mail: "naruto01@gmail.com", name: "나루토", nickName: "조립컴맞추자", phone: "010-1234-1234", accessToken: ""),
        .init(id: 1, mail: "sasuke01@gmail.com", name: "사스케", nickName: "글카내놔", phone: "010-1212-0909", accessToken: ""),
    ]
}
