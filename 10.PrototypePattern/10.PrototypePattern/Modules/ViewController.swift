//
//  ViewController.swift
//  10.PrototypePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import UIKit

class ViewController: UIViewController {

    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let monster = Monster(health: 100, level: 10)
        let monster2 = monster.copy()
        
        print("⚠️⚠️⚠️ ------ Watch out! That monster's level is \(monster.level)! ------ ⚠️⚠️⚠️")
        print("⚠️⚠️⚠️ ------ Watch out! That monster's level is \(monster2.level)! ------ ⚠️⚠️⚠️")
        print("⚠️⚠️⚠️ ------ Similar Monsters: \(monster === monster2) ------ ⚠️⚠️⚠️")
        print(Unmanaged.passUnretained(monster).toOpaque())
        print(Unmanaged.passUnretained(monster2).toOpaque())

        print("")

        let hellHound = HellHound(health: 700, level: 40, flaming: 50)
        let hellHound2 = hellHound.copy()
        hellHound2.flaming = 100
        hellHound.flaming = 150
        print("⚠️⚠️⚠️ ------ Wow, that's one hell of a hound! Flaming value: \(hellHound.flaming) ------ ⚠️⚠️⚠️")
        print("⚠️⚠️⚠️ ------ Wow, that's one hell of a hound! Flaming value: \(hellHound2.flaming) ------ ⚠️⚠️⚠️")
        print("⚠️⚠️⚠️ ------ Similar HellHounds: \(hellHound === hellHound2) ------ ⚠️⚠️⚠️")
        print(Unmanaged.passUnretained(hellHound).toOpaque())
        print(Unmanaged.passUnretained(hellHound2).toOpaque())
    }
}
