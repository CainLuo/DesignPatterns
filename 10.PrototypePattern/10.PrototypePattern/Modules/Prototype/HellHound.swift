//
//  HellHound.swift
//  10.PrototypePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

class HellHound: Monster {
    var flaming = 0
    
    init(health: Int, level: Int, flaming: Int) {
        self.flaming = flaming
        super.init(health: health, level: level)
    }
    
    required convenience init(_ prototype: Monster) {
        let hellHound = prototype as! HellHound
        self.init(health: hellHound.health,
                  level: hellHound.level,
                  flaming: hellHound.flaming)
    }
}
