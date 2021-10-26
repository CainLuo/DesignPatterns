//
//  GameSystem.swift
//  3.MementoPattern
//
//  Created by YYKJ0048 on 2021/10/26.
//

import Foundation

class GameSystem {
    
    // MARK: - Error types
    enum Error: String, Swift.Error {
        case gameNotFound
    }
    
    // MARK: - Properties
    let decoder = JSONDecoder()
    let encoder = JSONEncoder()
    let userDefaults = UserDefaults.standard
    
    // MARK: - Methods
    func save(_ game: Game, title: String) throws {
        let data = try encoder.encode(game)
        userDefaults.setValue(data, forKey: title)
    }
    
    func load(title: String) throws -> Game {
        guard let data = userDefaults.data(forKey: title),
              let game = try? decoder.decode(Game.self, from: data) else {
            throw Error.gameNotFound
        }
        return game
    }
}
