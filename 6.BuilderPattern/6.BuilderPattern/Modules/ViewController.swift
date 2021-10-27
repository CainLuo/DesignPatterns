//
//  ViewController.swift
//  6.BuilderPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let burgerFlipper = HamburgerDirector()
        if let combo1 = try? burgerFlipper.createCombo1() {
            print("⚠️⚠️⚠️ ------------ Nom nom " + combo1.description + " ------------ ⚠️⚠️⚠️")
        }
        
        if let kittenBurger = try? burgerFlipper.createKittenSpecial() {
            print("⚠️⚠️⚠️ ------------ Nom nom nom " + kittenBurger.description + " ------------ ⚠️⚠️⚠️")
        } else {
            print("⚠️⚠️⚠️ ------------ Sorry, no kitten burgers here... :[ ------------ ⚠️⚠️⚠️")
        }
    }
}
