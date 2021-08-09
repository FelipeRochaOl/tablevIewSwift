//
//  ViewController.swift
//  tableView
//
//  Created by Felipe Rocha Oliveira on 09/08/21.
//

import UIKit

enum Sections: Int {
    case cars = 0
    case motocycle = 1
}

class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!

    var motocycles: [Vehicle] = []
    var cars: [Vehicle] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // On delegate and dataSource
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        let motocycle1 = Motocycle(name: "Yamaha 3000", brand: "Yamaha", motor: 2.0, qtyWheels: 2, handlebars: "Curve", exhaustSize: 3.0)
        let motocycle2 = Motocycle(name: "Yamaha 4000", brand: "Yamaha", motor: 2.0, qtyWheels: 2, handlebars: "Curve", exhaustSize: 3.0)
        let motocycle3 = Motocycle(name: "Kawasaki 4000", brand: "Kawasaki", motor: 2.0, qtyWheels: 2, handlebars: "Curve", exhaustSize: 3.0)
        let motocycle4 = Motocycle(name: "Honda 4000", brand: "Honda", motor: 2.0, qtyWheels: 2, handlebars: "Curve", exhaustSize: 3.0)
        
        self.motocycles.append(contentsOf: [motocycle1, motocycle2, motocycle3, motocycle4])
        
        let car1 = Car(name: "Uno", brand: "Fiat", motor: 1.0, qtyWheels: 4, qtyPorts: 2, exchange: "Manual")
        let car2 = Car(name: "Fit", brand: "Honda", motor: 1.0, qtyWheels: 4, qtyPorts: 2, exchange: "Automatic")
        let car3 = Car(name: "Corsa", brand: "Chevrolet", motor: 1.0, qtyWheels: 4, qtyPorts: 2, exchange: "Manual")
        
        self.cars.append(contentsOf: [car1, car2, car3])
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case Sections.cars.rawValue:
            return "Cars"
        case Sections.motocycle.rawValue:
            return "Motocycles"
        default:
            return ""
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // qty rows in section
        switch section {
        case Sections.cars.rawValue:
            return self.cars.count
        case Sections.motocycle.rawValue:
            return self.motocycles.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create your cell
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        //add elements in cell
        if (indexPath.section == Sections.cars.rawValue) {
            cell.textLabel?.text = self.cars[indexPath.row].name
            cell.detailTextLabel?.text = self.cars[indexPath.row].brand
        }
        
        if (indexPath.section == Sections.motocycle.rawValue) {
            cell.textLabel?.text = self.motocycles[indexPath.row].name
            cell.detailTextLabel?.text = self.motocycles[indexPath.row].brand
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var sectionName = "motocycle"
        var vehicle: Vehicle?
        
        if (indexPath.section == Sections.cars.rawValue) {
            sectionName = "car"
            vehicle = self.cars[indexPath.row]
        }
        
        if (indexPath.section == Sections.motocycle.rawValue) {
            sectionName = "motocycle"
            vehicle = self.motocycles[indexPath.row]
        }
        
        print("The selected \(sectionName) is \(String(describing: vehicle?.name))")
    }
}
