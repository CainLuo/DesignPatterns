//
//  ViewController.swift
//  9.IteratorPattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    private var queue = Queue<Ticket>()

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        queue.enqueue(Ticket(description:"Wireframe Tinder for dogs app",
                             priority: .low))
        queue.enqueue(Ticket(description:"Set up 4k monitor for Josh",
                             priority: .medium))
        queue.enqueue(Ticket(description:"There is smoke coming out of my laptop",
                             priority: .high))
        queue.enqueue(Ticket(description:"Put googly eyes on the Roomba",
                             priority: .low))

        print("\n")
        print("Tickets sorted by priority:")
        for ticket in queue {
            print(ticket?.description ?? "No Description")
        }
    }
    
    // MARK: - Actions
    @IBAction func iteratorQueueAction(_ sender: Any) {
        _ = queue.dequeue()
        
        let sortedTickets = queue.sorted {
            $0!.sortIndex > ($1?.sortIndex)!
        }
        var sortedQueue = Queue<Ticket>()
        for ticket in sortedTickets {
            sortedQueue.enqueue(ticket!)
        }
        print("\n")
        print("Tickets sorted by priority:")
        for ticket in sortedQueue {
            print(ticket?.description ?? "No Description")
        }
    }
}
