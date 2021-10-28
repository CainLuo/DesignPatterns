//
//  StateProtocol.swift
//  11.StatePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import UIKit

// MARK: - State Protocol
protocol TrafficLightState: AnyObject {
    
    // MARK: - Properties
    var delay: TimeInterval { get }
    
    // MARK: - Instance Methods
    func apply(to context: TrafficLight)
}

// MARK: - Transitioning
extension TrafficLightState {
    func apply(to context: TrafficLight, after delay: TimeInterval) {
        let queue = DispatchQueue.main
        let dispatchTime = DispatchTime.now() + delay
        queue.asyncAfter(deadline: dispatchTime) { [weak self, weak context] in
            guard let self = self, let context = context else { return }
            print("⚠️⚠️⚠️ -------- \(self) -------- ⚠️⚠️⚠️")
            context.transition(to: self)
        }
    }
}

