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
        print("\(String(describing: type(of: self))) was born. His init: Name: \(self.name), HP: \(self.hp), MP: \(self.mp), Damage: \(self.damage).")
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
        if enemy.hp > 0 && hp > 0 {
            enemy.hp -= (damage + (mp*mpMultiplyer)) * defenceMultiplyer
            print("\(self.name) attaked \(enemy.name). His HP now: \(enemy.hp).")
        } else {
            isDied = true
            print("\(enemy.name) already died.")
        }
    }
}

class Human: Creature {
    override func attack(to enemy: Creature) {
        if enemy.hp > 0 && hp > 0 {
            if enemy.mp >= damage {
                enemy.hp -= damage
                print("\(self.name) attaked \(enemy.name). But \(enemy.name) couldn't repel the attack. His HP now: \(enemy.hp)")
            } else {
                enemy.hp -= damage * defenceMultiplyer
                print("\(self.name) attaked \(enemy.name). His HP now: \(enemy.hp).")
            }
        } else {
            isDied = true
            print("\(enemy.name) already died.")
        }
    }
}

class Monster: Creature {
    override func attack(to enemy: Creature) {
        if enemy.hp > 0 && hp > 0 {
            enemy.hp -= (damage + mp/2) * defenceMultiplyer
            print("\(self.name) attaked \(enemy.name). His HP now: \(enemy.hp).")
        } else {
            isDied = true
            print("\(enemy.name) already died.")
        }
    }
}
/*Battle*/
enum places {
    case field
    case forest
    case hills
}

class battlefield {
    var groupOfPeople: [Creature] = [Elf(name: "Noman", hp: 13, mp: 8, damage: 5), Human(name: "Trampsh", hp: 15, mp: 5, damage: 8)]
    
    func battleBegin(place: places) {
        if place == .field {
            
            var groupOfMonsters: [Monster] = [Monster(name: "Giena1", hp: 12, mp: 2, damage: 3), Monster(name: "Giena2", hp: 7, mp: 3, damage: 3), Monster(name: "Giena3", hp: 12, mp: 4, damage: 5)]
            
            for monster in groupOfMonsters {
                for human in groupOfPeople {
                    if monster.hp > 0 {
                        while monster.hp > 0 {
                            groupOfMonsters.randomElement()?.attack(to: human)
                            if human.hp <= 0 {
                                human.isDied = true
                                print("\(human.name) was killed by monsters.")
                                break
                            }
                        }
                    }
                    if human.hp > 0 {
                        while human.hp > 0 {
                            groupOfPeople.randomElement()?.attack(to: monster)
                            if monster.hp <= 0 {
                                monster.isDied = true
                                print("\(monster.name) was killed by humans.")
                                break
                            }
                        }
                    }
                }
            }
        }
        if place == .forest {
            
            var groupOfMonsters: [Monster] = [Monster(name: "Giena1", hp: 12, mp: 2, damage: 3), Monster(name: "Giena2", hp: 7, mp: 3, damage: 3), Monster(name: "Giena3", hp: 12, mp: 4, damage: 5), Monster(name: "Giena4", hp: 5, mp: 4, damage: 5)]
            
            groupOfPeople.randomElement()?.foundingItem(item: .rareItem)
            
            for monster in groupOfMonsters {
                for human in groupOfPeople {
                    
                    if human.hp > 0 {
                        while human.hp > 0 {
                            groupOfPeople.randomElement()?.attack(to: monster)
                            if monster.hp <= 0 {
                                monster.isDied = true
                                print("\(monster.name) was killed by humans.")
                                break
                            }
                        }
                    }
                    if monster.hp > 0 {
                        while monster.hp > 0 {
                            groupOfMonsters.randomElement()?.attack(to: human)
                            if human.hp <= 0 {
                                human.isDied = true
                                print("\(human.name) was killed by monsters.")
                                break
                            }
                        }
                    }
                }
            }
        }
        if place == .hills {
            
            var groupOfMonsters: [Monster] = [Monster(name: "Giena1", hp: 12, mp: 2, damage: 3), Monster(name: "Giena2", hp: 7, mp: 3, damage: 3), Monster(name: "Giena3", hp: 12, mp: 4, damage: 5), Monster(name: "Giena4", hp: 5, mp: 4, damage: 5), Monster(name: "Giena5", hp: 5, mp: 4, damage: 5), Monster(name: "Giena6", hp: 5, mp: 4, damage: 5)]
            
            groupOfPeople.randomElement()?.foundingItem(item: .rareItem)
            
            for monster in groupOfMonsters {
                for human in groupOfPeople {
                    
                    if human.hp > 0 {
                        while human.hp > 0 {
                            groupOfPeople.randomElement()?.attack(to: monster)
                            if monster.hp <= 0 {
                                monster.isDied = true
                                print("\(monster.name) was killed by humans.")
                                break
                            }
                        }
                    }
                    if monster.hp > 0 {
                        while monster.hp > 0 {
                            groupOfMonsters.randomElement()?.attack(to: human)
                            if human.hp <= 0 {
                                human.isDied = true
                                print("\(human.name) was killed by monsters.")
                                break
                            }
                        }
                    }
                }
            }
        }
    }
}

var world = battlefield()
world.battleBegin(place: .hills)
