//
//  ViewController.swift
//  7.FactoryPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var personal = ShareApplication(title: "Share",
                                        content: "Share My Hometown!",
                                        type: .facebook)
        
        let factory = ShareFactory()
        
        // facebook
        print("⚠️⚠️⚠️ --- \(factory.createShareContent(personal)) --- ⚠️⚠️⚠️")
        
        // instagram
        personal.type = .instagram
        print("⚠️⚠️⚠️ --- \(factory.createShareContent(personal)) --- ⚠️⚠️⚠️")

        // twitter
        personal.type = .twitter
        print("⚠️⚠️⚠️ --- \(factory.createShareContent(personal)) --- ⚠️⚠️⚠️")

        // line
        personal.type = .line
        print("⚠️⚠️⚠️ --- \(factory.createShareContent(personal)) --- ⚠️⚠️⚠️")
    }
}
