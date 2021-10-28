//
//  GoogleSign.swift
//  8.AdapterPattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import UIKit

struct GoogleUser {
    var email: String
    var password: String
    var token: String
}

class GoogleSign {
    func login(email: String,
               password: String,
               completion: @escaping (GoogleUser?, Error?) -> Void) {
        let token = "google-sign-token"
        let user = GoogleUser(email: email, password: password, token: token)
        completion(user, nil)
    }
}
