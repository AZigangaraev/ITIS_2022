//
//  Equipment.swift
//  106hw
//
//  Created by Artyom Mitrofanov on 21.10.2022.
//

import UIKit

struct Equipment {
    let type: String
    let rarity: String
    let endurance: String
    let power: String
    let equipImage: UIImage?
    
    public static func getArmor() -> [Equipment] {
        return [
            Equipment(
                type: "Helmet",
                rarity: "common",
                endurance: "good",
                power: "medium",
                equipImage: UIImage(named: "helmet")
            ),
            Equipment(
                type: "Chestplate",
                rarity: "rare",
                endurance: "best",
                power: "best",
                equipImage: UIImage(named: "Chestplate")
            ),
            Equipment(
                type: "Leggings",
                rarity: "common",
                endurance: "good",
                power: "good",
                equipImage: UIImage(named: "Leggings")
            ),
            Equipment(
                type: "Boots",
                rarity: "uncommon",
                endurance: "bad",
                power: "bad",
                equipImage: UIImage(named: "Boots")
            ),
            Equipment(
                type: "Shield",
                rarity: "common",
                endurance: "good",
                power: "best",
                equipImage: UIImage(named: "Shield")
            ),
        ]
    }
    
    public static func getWeapon() -> [Equipment] {
        return [
            Equipment(
                type: "Diamond Sword",
                rarity: "platinum",
                endurance: "best",
                power: "best",
                equipImage: UIImage(named: "DS")
            ),
            Equipment(
                type: "Iron Sword",
                rarity: "rare",
                endurance: "good",
                power: "best",
                equipImage: UIImage(named: "IS")
            ),
            Equipment(
                type: "Gold Sword",
                rarity: "rare",
                endurance: "good",
                power: "bad",
                equipImage: UIImage(named: "GS")
            ),
            Equipment(
                type: "Wood Sword",
                rarity: "uncommon",
                endurance: "bad",
                power: "bad",
                equipImage: UIImage(named: "WS")
            ),
            Equipment(
                type: "Diamond Axe",
                rarity: "rare",
                endurance: "best",
                power: "best",
                equipImage: UIImage(named: "DA")
            ),
            Equipment(
                type: "Iron Axe",
                rarity: "rare",
                endurance: "good",
                power: "best",
                equipImage: UIImage(named: "IA")
            ),
            Equipment(
                type: "Gold Axe",
                rarity: "rare",
                endurance: "good",
                power: "good",
                equipImage: UIImage(named: "GA")
            ),
            Equipment(
                type: "Wood Axe",
                rarity: "common",
                endurance: "bad",
                power: "bad",
                equipImage: UIImage(named: "WA")
            ),
            Equipment(
                type: "Diamond pickaxe",
                rarity: "rare",
                endurance: "best",
                power: "best",
                equipImage: UIImage(named: "DP")
            ),
            Equipment(
                type: "Iron pickaxe",
                rarity: "rare",
                endurance: "good",
                power: "best",
                equipImage: UIImage(named: "IP")
            ),
            Equipment(
                type: "Gold pickaxe",
                rarity: "rare",
                endurance: "good",
                power: "good",
                equipImage: UIImage(named: "GP")
            ),
            Equipment(
                type: "Wood pickaxe",
                rarity: "common",
                endurance: "bad",
                power: "bad",
                equipImage: UIImage(named: "WP")
            ),
        ]
    }
    public func printDescription() {
        print("Type: \(type), Rarity: \(rarity), Endurance: \(endurance), Power: \(power)")
    }
}
