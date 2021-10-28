//
//  Light.swift
//  11.StatePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import UIKit

class TrafficLight: UIView {
    // MARK: - Instance Properties
    private(set) var canisterLayers: [CAShapeLayer] = []
    private(set) var currentState: TrafficLightState
    private(set) var states: [TrafficLightState]
    
    // MARK: - Object Lifecycle
    @available(*, unavailable,
    message: "Use init(canisterCount: frame:) instead")
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) is not supported")
    }
    
    init(canisterCount: Int = 3,
         frame: CGRect = CGRect(x: 0, y: 0, width: 160, height: 420),
         states: [TrafficLightState]) {
        guard !states.isEmpty else {
            fatalError("states should not be empty")
        }
        self.currentState = states.first!
        self.states = states
        
        super.init(frame: frame)
        backgroundColor = UIColor(red: 0.86, green: 0.64, blue: 0.25, alpha: 1)
        createCanisterLayers(count: canisterCount)
        
        transition(to: currentState)
    }
    
    /// 创建Layer并添加到canisterLayers
    /// - Parameter count: Int
    private func createCanisterLayers(count: Int) {
        let paddingPercentage: CGFloat = 0.2
        let yTotalPadding = paddingPercentage * bounds.height
        let yPadding = yTotalPadding / CGFloat(count + 1)
        
        let canisterHeight = (bounds.height - yTotalPadding) / CGFloat(count)
        let xPadding = (bounds.width - canisterHeight) / 2.0
        var canisterFrame = CGRect(x: xPadding,
                                   y: yPadding,
                                   width: canisterHeight,
                                   height: canisterHeight)
        
        for _ in 0 ..< count {
            let canisterShape = CAShapeLayer()
            canisterShape.path = UIBezierPath(ovalIn: canisterFrame).cgPath
            canisterShape.fillColor = UIColor.black.cgColor
            
            layer.addSublayer(canisterShape)
            canisterLayers.append(canisterShape)
            
            canisterFrame.origin.y += (canisterFrame.height + yPadding)
        }
    }
    
    /// 切换下一个状态
    /// - Parameter state: TrafficLightState
    func transition(to state: TrafficLightState) {
        removeCanisterSublayers()
        currentState = state
        currentState.apply(to: self)
        nextState.apply(to: self, after: currentState.delay)
    }
    
    /// 移除上一个状态Layer
    private func removeCanisterSublayers() {
        canisterLayers.forEach {
            $0.sublayers?.forEach {
                $0.removeFromSuperlayer()
            }
        }
    }
    
    /// 获取下一个TrafficLightState
    var nextState: TrafficLightState {
        guard let index = states.firstIndex(where: { $0 === currentState }),
              index + 1 < states.count else {
            return states.first!
        }
        return states[index + 1]
    }
}
