//
//  EmergencyResponding.swift
//  12.MulticastDelegate
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

// MARK: - Delegate Protocol
public protocol EmergencyResponding {
    func notifyFire(at location: String)
    func notifyCarCrash(at location: String)
}
