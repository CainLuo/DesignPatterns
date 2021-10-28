//
//  TicketModel.swift
//  9.IteratorPattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

struct Ticket {
    enum PriorityType {
        case low
        case medium
        case high
    }
    
    var description: String
    var priority: PriorityType
    
    init(description: String, priority: PriorityType) {
        self.description = description
        self.priority = priority
    }
    
    var sortIndex: Int {
        switch self.priority {
        case .low:
            return 0
        case .medium:
            return 1
        case .high:
            return 2
        }
    }
}
