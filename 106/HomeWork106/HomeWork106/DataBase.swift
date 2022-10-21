//
//  DataBase.swift
//  HomeWork106
//
//  Created by Илья Казначеев on 18.10.2022.
//

import UIKit


struct Car{
    
    var company: String
    var model: String
    var weight: Float
    var price: Float
    var horsePower: Int
    var fuelСonsumption: Float
    
    public func printDescription() {
        print("name: \(company) \(model) \nweight: \(weight) \nprice: \(price) \nhorsePower: \(horsePower) \nfuelСonsumption: \(fuelСonsumption)\n")
    }
    
}

struct DataBase{
        
    static func getFor1Section() -> [Car] {
        return [
            Car(company: "LADA", model: "ВАЗ 2114", weight: 1410, price: 100_000, horsePower: 81, fuelСonsumption: 1.6),
            Car(company: "Kia", model: "Rio", weight: 1580, price: 1_434_000, horsePower: 123 , fuelСonsumption: 1.6),
            Car(company: "Mercedes-Benz", model: "C-Класс", weight: 1410, price: 4_500_000, horsePower: 150, fuelСonsumption: 1.5),
            Car(company: "BMW", model: "M8", weight: 1410, price: 13_300_000, horsePower: 600, fuelСonsumption: 3.3),
            Car(company: "LADA", model: "ВАЗ 2107", weight: 1430, price: 60_000, horsePower: 73, fuelСonsumption: 1.6)
        ]
    }
    
    static func getFor2Section() -> [Car] {
        return [
            Car(company: "LADA", model: "ВАЗ 2112", weight: 1600, price: 150_000, horsePower: 98, fuelСonsumption: 1.6),
            Car(company: "McLaren", model: "765LT", weight: 1388, price: 15_000_000, horsePower: 765 , fuelСonsumption: 4.0),
            Car(company: "Porsche", model: "Panamera 4S I", weight: 2440, price: 1_890_000, horsePower: 400, fuelСonsumption: 4.8),
            Car(company: "BMW", model: "3", weight: 1567, price: 2_500_00, horsePower: 150, fuelСonsumption: 2.0),
            Car(company: "LADA", model: "ВАЗ 2112", weight: 1490, price: 120_000, horsePower: 108, fuelСonsumption: 1.6),
            Car(company: "Mercedes-Benz", model: "E-Класс", weight: 1768, price: 7_000_000, horsePower: 199, fuelСonsumption: 2.0),
            Car(company: "Mercedes-Benz", model: "S-Класс", weight: 1901, price: 12_000_000, horsePower: 367, fuelСonsumption: 3.0),
            Car(company: "BMW", model: "5", weight: 1670, price: 4_500_000, horsePower: 249, fuelСonsumption: 3.0),
            Car(company: "Porsche", model: "Cayenne III", weight: 2100, price: 11_890_000, horsePower: 340, fuelСonsumption: 3.0),
            Car(company: "Audi", model: "Q8 45 TDI I", weight: 2440, price: 8_200_000, horsePower: 249, fuelСonsumption: 3.0),
        ]
    }
    
    static func chooseImageForCar(car: Car) -> UIImage? {
        switch car.company{
        case "LADA": return UIImage(named: "LADA")
        case "Kia": return UIImage(named: "Kia")
        case "Mercedes-Benz": return UIImage(named: "Mercedes-Benz")
        case "BMW": return UIImage(named: "BMW")
        case "McLaren": return UIImage(named: "McLaren")
        case "Porsche": return UIImage(named: "Porsche")
        case "Audi": return UIImage(named: "Audi")
        default:
            return nil
        }

    }

}


