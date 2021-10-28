//
//  Customer.swift
//  13.FacadePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

public struct Customer {
    public let identifier: String
    public var address: String
    public var name: String
}

extension Customer: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    public static func ==(lhs: Customer, rhs: Customer) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}
