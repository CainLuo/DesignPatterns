//
//  Monster.swift
//  10.PrototypePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

class Monster: Copying {
    var health: Int
    var level: Int
    
    init(health: Int, level: Int) {
        self.health = health
        self.level = level
    }
    
    required convenience init(_ monster: Monster) {
        self.init(health: monster.health, level: monster.level)
    }
}
