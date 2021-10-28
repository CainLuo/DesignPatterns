//
//  CopyingProtocol.swift
//  10.PrototypePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

protocol Copying: AnyObject {
    init(_ prototype: Self)
}

extension Copying {
    func copy() -> Self {
        return type(of: self).init(self)
    }
}
