//
//  FamilyModel.swift
//  6.BuilderPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import Foundation

// MARK: - Product: Family
struct Family {
    let type: FamilyType
    let identity: Identity
    let bodyInfo: BodyInfo
}

extension Family: CustomStringConvertible {
    public var description: String {
        return type.rawValue + " type"
    }
}

enum FamilyType: String {
    case family
    case notFamily
}

// MARK: - Identity
struct Identity: OptionSet {
    static let father    = Identity(rawValue: 1 << 0)
    static let mother    = Identity(rawValue: 1 << 1)
    static let brother   = Identity(rawValue: 1 << 2)
    static let sister    = Identity(rawValue: 1 << 3)
    static let strangers = Identity(rawValue: 1 << 4)

    let rawValue: Int
    
    init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

// MARK: - BodyInfo
struct BodyInfo: OptionSet {
    static let strong = BodyInfo(rawValue: 1 << 0)
    static let slim   = BodyInfo(rawValue: 1 << 1)
    static let weak   = BodyInfo(rawValue: 1 << 2)
    static let fat    = BodyInfo(rawValue: 1 << 3)

    let rawValue: Int
    
    init(rawValue: Int) {
        self.rawValue = rawValue
    }
}
