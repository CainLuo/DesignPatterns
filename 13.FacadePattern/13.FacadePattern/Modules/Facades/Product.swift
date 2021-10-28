//
//  Product.swift
//  13.FacadePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

public struct Product {
    public let identifier: String
    public var name: String
    public var cost: Double
}

extension Product: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }

    public static func ==(lhs: Product, rhs: Product) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}
