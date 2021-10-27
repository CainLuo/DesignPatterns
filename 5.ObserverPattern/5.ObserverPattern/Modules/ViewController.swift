//
//  ViewController.swift
//  5.ObserverPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import UIKit
import Combine

class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var textLabel: UILabel!
        
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = User(name: "Ace")
        let publisher = user.$name
        
        var subscriber: AnyCancellable? = publisher.sink() { [weak self] in
            self?.textLabel.text = $0
            print("⚠️⚠️⚠️ ------ User's name is \($0) ------ ⚠️⚠️⚠️")
        }
        
        user.name = "Queen"
        
        subscriber = nil
        
        user.name = "King"
    }
}
