//
//  ViewController.swift
//  11.StatePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import UIKit

class ViewController: UIViewController {

    private var light: TrafficLight = {
        let greenYellowRed: [SolidTrafficLightState] = [.greenLight(), .yellowLight(), .redLight()]
        let light = TrafficLight(states: greenYellowRed)
        return light
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(light)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let size = view.bounds.size
        let width: CGFloat = 160
        let height: CGFloat = 420
        let x: CGFloat = size.width / 2 - width / 2
        let y: CGFloat = size.height / 2 - height / 2
        light.frame = CGRect(x: x, y: y, width: width, height: height)
    }
}
