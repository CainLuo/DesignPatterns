//
//  RandomClient.swift
//  2.StrategyPattern
//
//  Created by YYKJ0048 on 2021/10/26.
//

import Foundation

class RandomClient: NumbersStrategy {
    var serviceName: String = "RandomClient"
    
    var numbers: [Int] = {
        let maxNumber: Int = Int(arc4random_uniform(10))
        return Array(0...maxNumber)
    }()
    
    func iteratorNumbers() {
        numbers.forEach { number in
            print("RandomClient Iterator number: \(number)")
        }
        print("")
    }
}
