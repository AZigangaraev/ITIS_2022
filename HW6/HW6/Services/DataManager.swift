//
//  DataManager.swift
//  HW6
//
//  Created by Тимур Хайруллин on 21.10.2022.
//

class DataManager {

    static let shared = DataManager()

    let names = [
        "Audi",
        "BMW",
        "Mercedes-Benz",
        "Mitsubishi",
        "Toyota",
        "Suzuki",
        "Nissan"
    ]

    let price = [
        "Страна: Германия, цена: от 4 млн руб",
        "Страна: Германия, цена: от 3 млн руб",
        "Страна: Германия, цена: от 7 млн руб",
        "Страна: Япония, цена: от 1,5 млн руб",
        "Страна: Япония, цена: от 1,5 млн руб",
        "Страна: Япония, цена: от 1 млн руб",
        "Страна: Япония, цена: от 2,5 млн руб"
    ]

    private init() {}
}
