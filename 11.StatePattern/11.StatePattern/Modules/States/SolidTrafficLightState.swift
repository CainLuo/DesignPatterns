//
//  SolidTrafficLightState.swift
//  11.StatePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import UIKit

// MARK: - Concrete States
class SolidTrafficLightState {
    
    // MARK: - Properties
    public let canisterIndex: Int
    public let color: UIColor
    public let delay: TimeInterval
    
    // MARK: - Object Lifecycle
    public init(canisterIndex: Int,
                color: UIColor,
                delay: TimeInterval) {
        self.canisterIndex = canisterIndex
        self.color = color
        self.delay = delay
    }
}

extension SolidTrafficLightState: TrafficLightState {
    
    func apply(to context: TrafficLight) {
        let canisterLayer = context.canisterLayers[canisterIndex]
        let circleShape = CAShapeLayer()
        circleShape.path = canisterLayer.path!
        circleShape.fillColor = color.cgColor
        circleShape.strokeColor = color.cgColor
        canisterLayer.addSublayer(circleShape)
    }
}

// MARK: - Convenience Constructors
extension SolidTrafficLightState {
    class func greenLight(color: UIColor = UIColor(red: 0.21, green: 0.78, blue: 0.35, alpha: 1),
                          canisterIndex: Int = 2,
                          delay: TimeInterval = 1.0) -> SolidTrafficLightState {
        SolidTrafficLightState(canisterIndex: canisterIndex,
                               color: color,
                               delay: delay)
    }
    
    class func yellowLight(color: UIColor = UIColor(red: 0.98, green: 0.91, blue: 0.07, alpha: 1),
                           canisterIndex: Int = 1,
                           delay: TimeInterval = 0.5) -> SolidTrafficLightState {
        SolidTrafficLightState(canisterIndex: canisterIndex,
                               color: color,
                               delay: delay)
    }
    
    class func redLight(color: UIColor = UIColor(red: 0.88, green: 0, blue: 0.04, alpha: 1),
                        canisterIndex: Int = 0,
                        delay: TimeInterval = 2.0) -> SolidTrafficLightState {
        SolidTrafficLightState(canisterIndex: canisterIndex,
                               color: color,
                               delay: delay)
    }
}
