//
//  PoliceStation.swift
//  12.MulticastDelegate
//
//  Created by YYKJ0048 on 2021/10/28.
//

import Foundation

public class PoliceStation: EmergencyResponding {
    public func notifyFire(at location: String) {
        print("⚠️⚠️⚠️ ---------- Police were notified about a fire at " + location + " ---------- ⚠️⚠️⚠️")
    }

    public func notifyCarCrash(at location: String) {
        print("⚠️⚠️⚠️ ---------- Police were notified about a car crash at " + location + " ---------- ⚠️⚠️⚠️")
    }
}
