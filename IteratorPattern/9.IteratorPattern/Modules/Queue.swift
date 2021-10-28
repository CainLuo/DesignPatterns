//
//  Queue.swift
//  9.IteratorPattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

struct Queue<T> {
    private var array: [T?] = []
    private var head = 0
    
    var isEmpty: Bool {
        count == 0
    }
    
    var count: Int {
        array.count - head
    }
    
    mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else {
            return nil
        }
        array[head] = nil
        head += 1
        
        let percentage = Double(head) / Double(array.count)
        if array.count > 50, percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        return element
    }
}

// MARK: - Sequence
extension Queue: Sequence {
    public func makeIterator() -> IndexingIterator<ArraySlice<T?>> {
        let nonEmptyValues = array[head ..< array.count]
        return nonEmptyValues.makeIterator()
    }
}
