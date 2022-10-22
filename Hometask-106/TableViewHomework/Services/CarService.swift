//
//  CarService.swift
//  TableViewHomework
//
//  Created by Данил Терлецкий on 22.10.2022.
//

class CarService {
    static let ladaGranta = Car(name: "Lada Granta", weight: 1, price: 300000, speed: 180, fuelConsumption: 10, isForeign: false)
    static let ladaPriora = Car(name: "Lada Priora", weight: 1, price: 350000, speed: 190, fuelConsumption: 12, isForeign: false)
    static let ladaKalina = Car(name: "Lada Kalina", weight: 2, price: 400000, speed: 170, fuelConsumption: 11, isForeign: false)
    static let ladaXRay = Car(name: "Lada XRay", weight: 1, price: 500000, speed: 220, fuelConsumption: 13, isForeign: false)
    static let ladaNiva = Car(name: "Lada Niva", weight: 3, price: 600000, speed: 230, fuelConsumption: 17, isForeign: false)


    static let mercedes = Car(name: "Mercedes Benz E200", weight: 2, price: 3000000, speed: 250, fuelConsumption: 20, isForeign: true)
    static let bmw = Car(name: "BMW X3", weight: 2, price: 4000000, speed: 270, fuelConsumption: 30, isForeign: true)
    static let ferrari = Car(name: "Ferrari F8", weight: 3, price: 10000000, speed: 300, fuelConsumption: 30, isForeign: true)
    static let volkswagen = Car(name: "Volkswagen Caddy", weight: 4, price: 1000000, speed: 250, fuelConsumption: 23, isForeign: true)
    static let skoda = Car(name: "Skoda Rapid", weight: 2, price: 800000, speed: 210, fuelConsumption: 15, isForeign: true)
    static let kiaRio = Car(name: "Kia Rio", weight: 2, price: 600000, speed: 230, fuelConsumption: 14, isForeign: true)
    static let hyindai = Car(name: "Hyindai Solaris", weight: 2, price: 650000, speed: 230, fuelConsumption: 14, isForeign: true)
    static let kiaK5 = Car(name: "Kia K5", weight: 2, price: 2000000, speed: 260, fuelConsumption: 15, isForeign: true)
    static let kiaSportage = Car(name: "Kia K5", weight: 2, price: 2000000, speed: 260, fuelConsumption: 15, isForeign: true)
    static let porsche = Car(name: "Porsche Cayen", weight: 3, price: 5000000, speed: 300, fuelConsumption: 12, isForeign: true)

    static func getAllCars() -> [Car] {
        [ladaGranta, ladaPriora, ladaKalina, ladaXRay, ladaNiva, mercedes, bmw, ferrari, volkswagen, skoda, kiaK5, kiaRio, kiaSportage, hyindai, porsche]
    }

    static func getRussianCars() -> [Car] {
        [ladaGranta, ladaPriora, ladaKalina, ladaXRay, ladaNiva]
    }

    static func getForeignCars() -> [Car] {
        [mercedes, bmw, ferrari, volkswagen, skoda, kiaK5, kiaRio, kiaSportage, hyindai, porsche]
    }
}


