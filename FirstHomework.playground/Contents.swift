import UIKit
import Foundation

class Creature {
    var name: String
    var hp: Double
    var mp: Double
    var damage: Double
    var defenceMultiplyer = Double.random(in: 0.5..<1)
    var isDied = false
    
    init(name: String, hp: Double, mp: Double, damage: Double) {
        self.name = name
        self.hp = hp
        self.mp = mp
        self.damage = damage
    }
    
    func attack(to enemy: Creature) {
        if isDied == false {
            enemy.hp -= damage * defenceMultiplyer
            print("\(self.name) attaked \(enemy.name). His HP now: \(enemy.hp).")
        } else {
            print("\(enemy.name) already died.")
        }
    }
}


class Elf: Creature {
    override func attack(to enemy: Creature) {
        var mpMultiplyer = Double.random(in: 0.2..<1)
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



class Monster: Creature {}

var creature = Creature(name: "Alex", hp: 10, mp: 3, damage: 6)
var elf = Elf(name: "Max", hp: 13, mp: 5, damage: 2)
var human = Human(name: "Ivan", hp: 14, mp: 2, damage: 5)

//creature.attack(to: elf)

elf.attack(to: creature)
human.attack(to: elf)
