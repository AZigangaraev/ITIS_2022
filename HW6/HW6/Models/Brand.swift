//
//  Brand.swift
//  HW6
//
//  Created by Тимур Хайруллин on 21.10.2022.
//

struct Brand {
    let name: String
    let price: String
}

extension Brand {
    static func getBrandList() -> [Brand] {
        var brands: [Brand] = []
        let names = DataManager.shared.names
        let prices = DataManager.shared.price


        for index in 0..<names.count {
            let brand = Brand(name: names[index],
            price: prices[index])
            brands.append(brand)
        }

        return brands
    }
}
