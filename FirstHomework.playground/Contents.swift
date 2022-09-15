import UIKit
import Foundation

class Creature: founding {
    
    var name: String
    var hp: Double
    var mp: Double
    var damage: Double
    var isDied = false
    
    init(name: String, hp: Double, mp: Double, damage: Double) {
        self.name = name
        self.hp = hp
        self.mp = mp
        self.damage = damage
    }
    
    var defenceMultiplyer = Double.random(in: 0.5..<1)
    func attack(to enemy: Creature) {}
    
    func foundingItem(item: foundItem) {
        if item == .rareItem {
            self.hp += 3
            self.mp += 1
            print("\(self.name) found rare item! Now his HP: \(self.hp) and MP: \(self.mp).")
        }
        if item == .uncommonItem {
            self.hp += 2
            self.mp += 0.5
            print("\(self.name) found uncommon item! Now his HP: \(self.hp) and MP: \(self.mp).")
        }
        if item == .commonItem {
            self.hp += 1
            print("\(self.name) found common item! Now his HP: \(self.hp).")
        }
    }
}

enum foundItem {
    case rareItem
    case uncommonItem
    case commonItem
}

protocol founding {
    func foundingItem(item: foundItem)
}


class Elf: Creature {
    override func attack(to enemy: Creature) {
        var mpMultiplyer = Double.random(in: 0.5..<1)
        if isDied == false {
            enemy.hp -= (damage + (mp*mpMultiplyer)) * defenceMultiplyer
            print("\(self.name) attaked \(enemy.name). His HP now: \(enemy.hp).")
        } else {
            print("\(enemy.name) already died.")
        }
    }
}

class Human: Creature {
    override func attack(to enemy: Creature) {
        if isDied == false {
            if enemy.mp >= damage {
                enemy.hp -= damage
                print("\(self.name) attaked \(enemy.name). But \(enemy.name) couldn't repel the attack. His HP now: \(enemy.hp)")
            } else {
                enemy.hp -= damage * defenceMultiplyer
                print("\(self.name) attaked \(enemy.name). His HP now: \(enemy.hp).")
            }
        } else {
            print("\(enemy.name) already died.")
        }
    }
}

class Monster: Creature {
    override func attack(to enemy: Creature) {
        if isDied == false {
            enemy.hp -= (damage + mp/2) * defenceMultiplyer
            print("\(self.name) attaked \(enemy.name). His HP now: \(enemy.hp).")
        } else {
            print("\(enemy.name) already died.")
        }
    }
}

var elf = Elf(name: "Max", hp: 13, mp: 5, damage: 2)
var human = Human(name: "Ivan", hp: 14, mp: 2, damage: 5)
var monster = Monster(name: "Giena", hp: 12, mp: 2, damage: 3)

human.attack(to: elf)
elf.foundingItem(item: .rareItem)
