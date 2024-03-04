//
//  API+Extensions.swift
//  Compartz
//
//  Created by 영현 on 3/2/24.
//

import Foundation

extension API {
    
}

extension Bundle {
    var apiKey: String? {
        return infoDictionary?["API_KEY"] as? String
    }
}
