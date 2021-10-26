//
//  ViewController.swift
//  2.StrategyPattern
//
//  Created by YYKJ0048 on 2021/10/26.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    var client: NumbersStrategy = RandomClient()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = client.serviceName
    }
    
    // MARK: - Actions
    @IBAction func changeStrategyAction(_ sender: Any) {
        if client.serviceName == "RandomClient" {
            client = SequeceClient()
        } else {
            client = RandomClient()
        }
        title = client.serviceName
        client.iteratorNumbers()
    }
}
