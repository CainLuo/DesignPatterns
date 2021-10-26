//
//  ShareManager.swift
//  3.SingletonPattern
//
//  Created by YYKJ0048 on 2021/10/26.
//

import Foundation

class ShareManager {
    
    static let shared = ShareManager()
    
    private init() {
    }
    
    func sayHi() {
        print("⚠️⚠️⚠️ ----------- Hi ----------- ⚠️⚠️⚠️")
    }
}
