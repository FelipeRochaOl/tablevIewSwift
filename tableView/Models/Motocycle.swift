//
//  Moto.swift
//  tableView
//
//  Created by Felipe Rocha Oliveira on 09/08/21.
//

import Foundation

class Motocycle: Vehicle {
    private (set) var handlebars: String
    private (set) var exhaustSize: Double
    
    init(name: String, brand: String, motor: Double, qtyWheels: Int, handlebars: String, exhaustSize: Double) {
        self.handlebars = handlebars
        self.exhaustSize = exhaustSize
        
        super.init(name: name, brand: brand, motor: motor, qtyWheels: qtyWheels)
    }
}
