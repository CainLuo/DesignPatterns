//
//  GameModel.swift
//  3.MementoPattern
//
//  Created by YYKJ0048 on 2021/10/26.
//

import Foundation

class Game: Codable {
    
    // MARK: - Class
    class State: Codable {
        var attemptsRemaining: Int = 5
        var score: Int = 0
    }
    
    // MARK: - Properties
    var state = State()
    
    // MARK: - Methods
    func rackUpMassivePoints() {
        state.score = 2888
    }
    
    func youFailed() {
        state.attemptsRemaining -= 1
    }
}
