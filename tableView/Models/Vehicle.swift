//
//  Vehicle.swift
//  tableView
//
//  Created by Felipe Rocha Oliveira on 09/08/21.
//

import Foundation

class Vehicle {
    private (set) var qtyWheels: Int
    private (set) var motor: Double
    private (set) var name: String
    private (set) var brand: String
    
    init(name: String, brand: String, motor: Double, qtyWheels: Int) {
        self.name = name
        self.brand = brand
        self.motor = motor
        self.qtyWheels = qtyWheels
    }
}
