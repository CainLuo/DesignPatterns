//
//  OrderFacade.swift
//  13.FacadePattern
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

public class OrderFacade {
    public let inventoryDatabase: InventoryDatabase
    public let shippingDatabase: ShippingDatabase

    public init(inventoryDatabase: InventoryDatabase, shippingDatabase: ShippingDatabase) {
        self.inventoryDatabase = inventoryDatabase
        self.shippingDatabase = shippingDatabase
    }
    
    public func placeOrder(for product: Product,
                           by customer: Customer) {
        print("⚠️⚠️⚠️ --- Place order for '\(product.name)' by '\(customer.name)' --- ⚠️⚠️⚠️")

        // 2
        let count = inventoryDatabase.inventory[product, default: 0]
        guard count > 0 else {
            print("⚠️⚠️⚠️ ---'\(product.name)' is out of stock! --- ⚠️⚠️⚠️")
            return
        }

        // 3
        inventoryDatabase.inventory[product] = count - 1

        // 4
        var shipments = shippingDatabase.pendingShipments[customer, default: []]
        shipments.append(product)
        shippingDatabase.pendingShipments[customer] = shipments

        // 5
        print("⚠️⚠️⚠️ --- Order placed for '\(product.name)' " + "by '\(customer.name)' --- ⚠️⚠️⚠️")
    }
}
