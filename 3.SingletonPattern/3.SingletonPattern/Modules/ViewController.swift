//
//  ViewController.swift
//  3.SingletonPattern
//
//  Created by YYKJ0048 on 2021/10/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let manager = ShareManager.shared
        manager.sayHi()
    }
}
