//
//  ViewController.swift
//  3.MementoPattern
//
//  Created by YYKJ0048 on 2021/10/26.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var scoreLabel: UILabel!
    
    private var game = Game()
    private let gameSystem = GameSystem()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction func startGameAction(_ sender: Any) {
        game.youFailed()
        game.rackUpMassivePoints()
        print("⚠️⚠️⚠️ ---------------- Start Game ---------------- ⚠️⚠️⚠️")
        do {
            try gameSystem.save(game, title: "Best Game Ever")
        } catch {
            print("Save Failed")
        }
    }
    
    @IBAction func loadGameAction(_ sender: Any) {
        print("⚠️⚠️⚠️ ---------------- Load New Game ---------------- ⚠️⚠️⚠️")
        
        game = Game()
        
        do {
            game = try gameSystem.load(title: "Best Game Ever")
            scoreLabel.text = "Score: \(game.state.score)"
        } catch {
            print("Load Game Failed")
        }
    }
}
