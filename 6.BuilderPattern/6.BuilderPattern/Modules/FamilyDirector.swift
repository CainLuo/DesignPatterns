//
//  FamilyDirector.swift
//  6.BuilderPattern
//
//  Created by YYKJ0048 on 2021/10/27.
//

import Foundation

// MARK: - Director
class FamilyDirector {
    
    func createFamily() throws -> Family {
        let builder = FamilyBuilder()
        try builder.setType(.father)
        builder.addIdentity(.brother)
        builder.addBodyInfo(.strong)
        return builder.build()
    }
    
    func createNotFamily() throws -> Family {
        let builder = FamilyBuilder()
        try builder.setType(.strangers)
        builder.addIdentity(.strangers)
        builder.addBodyInfo(.strong)
        return builder.build()
    }
}
