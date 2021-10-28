//
//  AppleSign.swift
//  8.AdapterPattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

struct AppleUser {
    var email: String
    var token: String
}

class AppleSign {
    func login(completion: @escaping (AppleUser?, Error?) -> Void) {
        let token = "sign-apple-token"
        let user = AppleUser(email: "xcode@apple.com", token: token)
        completion(user, nil)
    }
}
