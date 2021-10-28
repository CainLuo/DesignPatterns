//
//  ViewController.swift
//  6.BuilderPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let burgerFlipper = FamilyDirector()
        if let combo1 = try? burgerFlipper.createFamily() {
            print("⚠️⚠️⚠️ ------------ This is a " + combo1.description + " ------------ ⚠️⚠️⚠️")
        }
        
        if let kittenBurger = try? burgerFlipper.createNotFamily() {
            print("⚠️⚠️⚠️ ------------ This is a " + kittenBurger.description + " ------------ ⚠️⚠️⚠️")
        } else {
            print("⚠️⚠️⚠️ ------------ Sorry, This is not a normal family... :[ ------------ ⚠️⚠️⚠️")
        }
    }
}
