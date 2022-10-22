//
//  Car.swift
//  TableViewHomework
//
//  Created by Данил Терлецкий on 21.10.2022.
//

struct Car {
    var name: String
    var weight: Int
    var price: Int
    var speed: Int
    var fuelConsumption: Int
    var isForeign: Bool

    init(name: String, weight: Int, price: Int, speed: Int, fuelConsumption: Int, isForeign: Bool) {
        self.name = name
        self.weight = weight
        self.price = price
        self.speed = speed
        self.fuelConsumption = fuelConsumption
        self.isForeign = isForeign
    }
}


