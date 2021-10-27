//
//  UserModel.swift
//  5.ObserverPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import Combine

class User {
    @Published var name: String
    
    public init(name: String) {
        self.name = name
    }
}
