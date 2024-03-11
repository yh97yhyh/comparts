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
    var nickname: String
    var phone: String
}

extension User {
    static let MOCK_USER: User = .init(id: 0, mail: "naruto01", name: "나루토", nickname: "조립컴맞추자", phone: "010-1234-1234")
    static let MOCK_USERS: [User] = [
        .init(id: 0, mail: "naruto01@gmail.com", name: "나루토", nickname: "조립컴맞추자", phone: "010-1234-1234"),
        .init(id: 1, mail: "sasuke01@gmail.com", name: "사스케", nickname: "글카내놔", phone: "010-1212-0909"),
    ]
}
