//
//  DataBase.swift
//  HomeWork106
//
//  Created by Илья Казначеев on 18.10.2022.
//

import UIKit


struct Car{
    
    var name: String
    var weight: Float
    var price: Float
    var horsePower: Int
    var fuelСonsumption: Float
    
    public func printDescription() {
        print("name: \(name) \nweight: \(weight) \nprice: \(price) \nhorsePower: \(horsePower) \nfuelСonsumption: \(fuelСonsumption)\n")
    }
    
}

struct DataBase{
        
    static func getFor1Section() -> [Car] {
        return [
            Car(name: "LADA ВАЗ 2114", weight: 1410, price: 100_000, horsePower: 81, fuelСonsumption: 1.6),
            Car(name: "Kia Rio", weight: 1580, price: 1_434_000, horsePower: 123 , fuelСonsumption: 1.6),
            Car(name: "Mercedes-Benz C-Класс", weight: 1410, price: 4_500_000, horsePower: 150, fuelСonsumption: 1.5),
            Car(name: "BMW M8", weight: 1410, price: 13_300_000, horsePower: 600, fuelСonsumption: 3.3),
            Car(name: "LADA ВАЗ 2107", weight: 1430, price: 60_000, horsePower: 73, fuelСonsumption: 1.6)
        ]
    }
    
    static func getFor2Section() -> [Car] {
        return [
            Car(name: "LADA ВАЗ 2112", weight: 1600, price: 150_000, horsePower: 98, fuelСonsumption: 1.6),
            Car(name: "McLaren 765LT", weight: 1388, price: 15_000_000, horsePower: 765 , fuelСonsumption: 4.0),
            Car(name: "Porsche Panamera 4S I", weight: 2440, price: 1_890_000, horsePower: 400, fuelСonsumption: 4.8),
            Car(name: "BMW 3", weight: 1567, price: 2_500_00, horsePower: 150, fuelСonsumption: 2.0),
            Car(name: "LADA ВАЗ 2112", weight: 1490, price: 120_000, horsePower: 108, fuelСonsumption: 1.6),
            Car(name: "Mercedes-Benz E-Класс", weight: 1768, price: 7_000_000, horsePower: 199, fuelСonsumption: 2.0),
            Car(name: "Mercedes-Benz S-Класс", weight: 1901, price: 12_000_000, horsePower: 367, fuelСonsumption: 3.0),
            Car(name: "BMW 5", weight: 1670, price: 4_500_000, horsePower: 249, fuelСonsumption: 3.0),
            Car(name: "Porsche Cayenne III", weight: 2100, price: 11_890_000, horsePower: 340, fuelСonsumption: 3.0),
            Car(name: "Audi Q8 45 TDI I", weight: 2440, price: 8_200_000, horsePower: 249, fuelСonsumption: 3.0),
        ]
    }
    
    static func chooseImageForCar(car: Car) -> UIImage? {
        if (car.name.contains("LADA")){
            return UIImage(named: "LADA")
        }
        if (car.name.contains("Kia")){
            return UIImage(named: "Kia")
        }
        if (car.name.contains("Mercedes-Benz")){
            return UIImage(named: "Mercedes-Benz")
        }
        if (car.name.contains("BMW")){
            return UIImage(named: "BMW")
        }
        if (car.name.contains("McLaren")){
            return UIImage(named: "McLaren")
        }
        if (car.name.contains("Porsche")){
            return UIImage(named: "Porsche")
        }
        if (car.name.contains("Audi")){
            return UIImage(named: "Audi")
        }
        return nil
    }

}


