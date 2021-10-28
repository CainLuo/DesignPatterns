//
//  ViewController.swift
//  13.FacadePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 1
        let rayDoodle = Product(identifier: "product-001",
                                name: "Ray's doodle",
                                cost: 0.25)
        let vickiPoodle = Product(identifier: "product-002",
                                  name: "Vicki's prized poodle",
                                  cost: 1000)
        // 2
        let inventoryDatabase = InventoryDatabase(inventory: [rayDoodle: 50, vickiPoodle : 1])
        // 3
        let orderFacade = OrderFacade(inventoryDatabase: inventoryDatabase,
                                      shippingDatabase: ShippingDatabase())
        // 4
        let customer = Customer(identifier: "customer-001",
                                address: "1600 Pennsylvania Ave, Washington, DC 20006",
                                name: "Johnny Appleseed")
        orderFacade.placeOrder(for: vickiPoodle, by: customer)
    }
}
