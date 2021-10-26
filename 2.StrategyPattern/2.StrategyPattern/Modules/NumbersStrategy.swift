//
//  NumbersStrategy.swift
//  2.StrategyPattern
//
//  Created by YYKJ0048 on 2021/10/26.
//

import UIKit

protocol NumbersStrategy {
    var serviceName: String { get }
    var numbers: [Int] { get }
    
    func iteratorNumbers()
}
