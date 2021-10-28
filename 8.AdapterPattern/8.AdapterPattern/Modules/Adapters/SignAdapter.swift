//
//  SignAdapter.swift
//  8.AdapterPattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

// MARK: - Protocol
enum SignType {
    case google
    case apple
}

protocol SignService {
    func login(signType: SignType,
               email: String?, password: String?,
               success: @escaping(User, Token) -> Void,
               failure: @escaping(Error?) -> Void)
}

struct User {
    let email: String?
    let password: String?
}

struct Token {
    let value: String
}

// MARK: - Sign Adapter
class SignAdapter: SignService {
    private var googleSign = GoogleSign()
    private var appleSign = AppleSign()

    func login(signType: SignType,
               email: String?, password: String?,
               success: @escaping (User, Token) -> Void,
               failure: @escaping (Error?) -> Void) {
        switch signType {
        case .apple:
            appleSign.login { appleUser, error in
                guard let appleUser = appleUser else {
                    failure(error)
                    return
                }
                let user = User(email: appleUser.email, password: nil)
                let token = Token(value: appleUser.token)
                success(user, token)
            }
        case .google:
            guard let email = email,
                  let password = password else {
                return
            }
            googleSign.login(email: email, password: password) { googleUser, error in
                guard let googleUser = googleUser else {
                    failure(error)
                    return
                }
                let user = User(email: googleUser.email, password: googleUser.password)
                let token = Token(value: googleUser.token)
                success(user, token)
            }
        }
    }
}
