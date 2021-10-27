//
//  HamburgerModel.swift
//  6.BuilderPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import Foundation

// MARK: - Product
public struct Hamburger {
    public let meat: Meat
    public let sauce: Sauces
    public let toppings: Toppings
}

extension Hamburger: CustomStringConvertible {
    public var description: String {
        return meat.rawValue + " burger"
    }
}

public enum Meat: String {
    case beef
    case chicken
    case kitten
    case tofu
}

public struct Sauces: OptionSet {
    public static let mayonnaise = Sauces(rawValue: 1 << 0)
    public static let mustard    = Sauces(rawValue: 1 << 1)
    public static let ketchup    = Sauces(rawValue: 1 << 2)
    public static let secret     = Sauces(rawValue: 1 << 3)
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

public struct Toppings: OptionSet {
    public static let cheese   = Toppings(rawValue: 1 << 0)
    public static let lettuce  = Toppings(rawValue: 1 << 1)
    public static let pickles  = Toppings(rawValue: 1 << 2)
    public static let tomatoes = Toppings(rawValue: 1 << 3)
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}
