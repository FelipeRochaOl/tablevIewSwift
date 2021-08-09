//
//  Carro.swift
//  tableView
//
//  Created by Felipe Rocha Oliveira on 09/08/21.
//

import Foundation

class Car: Vehicle {
    private (set) var qtyPorts: Int = 2
    private (set) var exchange: String
    
    init(name: String, brand: String, motor: Double, qtyWheels: Int, qtyPorts: Int, exchange: String) {
        self.qtyPorts = qtyPorts
        self.exchange = exchange
        
        super.init(name: name, brand: brand, motor: motor, qtyWheels: qtyWheels)
    }
}
