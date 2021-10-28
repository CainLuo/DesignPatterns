//
//  ViewController.swift
//  12.MulticastDelegate
//
//  Created by YYKJ0048 on 2021/10/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dispatch = DispatchSystem()
        let policeStation: PoliceStation! = PoliceStation()
        var fireStation: FireStation! = FireStation()

        dispatch.multicastDelegate.addDelegate(policeStation)
        dispatch.multicastDelegate.addDelegate(fireStation)
        
        dispatch.multicastDelegate.invokeDelegates {
            $0.notifyFire(at: "XiaoMing’s house!")
        }
        
        print("")
        fireStation = nil
        dispatch.multicastDelegate.invokeDelegates {
            $0.notifyCarCrash(at: "XiaoMing's garage!")
        }
    }
}
