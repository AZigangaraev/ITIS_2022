//
//  Description.swift
//  HW6
//
//  Created by Тимур Хайруллин on 22.10.2022.
//

struct Description {
    let price: String
}

extension Description {
    static func getpriceList() -> [Description] {
        var descriptions: [Description] = []
        let prices = DataManager.shared.price



        for index in 0..<prices.count {
            let description = Description(price: prices[index])
            descriptions.append(description)
        }

        return descriptions
    }
}
