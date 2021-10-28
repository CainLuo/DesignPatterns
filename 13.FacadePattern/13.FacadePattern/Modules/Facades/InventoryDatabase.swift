//
//  InventoryDatabase.swift
//  13.FacadePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

public class InventoryDatabase {
    public var inventory: [Product: Int] = [:]
    public init(inventory: [Product: Int]) {
        self.inventory = inventory
    }
}
