//
//  SequenceClient.swift
//  2.StrategyPattern
//
//  Created by YYKJ0048 on 2021/10/26.
//

import Foundation

class SequeceClient: NumbersStrategy {
    var serviceName: String = "SequeceClient"
    
    var numbers: [Int] = Array(0...10)
    
    func iteratorNumbers() {
        numbers.forEach { number in
            print("SequeceClient Iterator number: \(number)")
        }
        print("")
    }
}
