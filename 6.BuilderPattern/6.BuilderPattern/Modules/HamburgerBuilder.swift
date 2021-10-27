//
//  HamburgerBuilder.swift
//  6.BuilderPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import Foundation

// MARK: - Builder
public class HamburgerBuilder {
    public enum Error: Swift.Error {
        case soldOut
    }
    
    // MARK: - Properties
    public private(set) var meat: Meat = .beef
    public private(set) var sauces: Sauces = []
    public private(set) var toppings: Toppings = []
    
    private var soldOutMeats: [Meat] = [.kitten]
    
    public func addSauces(_ sauce: Sauces) {
        sauces.insert(sauce)
    }
    
    public func removeSauces(_ sauce: Sauces) {
        sauces.remove(sauce)
    }
    
    public func addToppings(_ topping: Toppings) {
        toppings.insert(topping)
    }
    
    public func removeToppings(_ topping: Toppings) {
        toppings.remove(topping)
    }
    
    public func setMeat(_ meat: Meat) throws {
        guard isAvailable(meat) else {
            throw Error.soldOut
        }
        self.meat = meat
    }
    
    public func isAvailable(_ meat: Meat) -> Bool {
        return !soldOutMeats.contains(meat)
    }
    
    public func build() -> Hamburger {
        return Hamburger(meat: meat,
                         sauce: sauces,
                         toppings: toppings)
    }
}
