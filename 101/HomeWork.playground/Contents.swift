import UIKit

protocol Creature{
    
    var name: String { get set }
    var hp: Int { get set }
    var mp: Int { get set }
    var countForUltimate: Int { get set }
    var canUseUltimate: Bool { get set }
    var damageRange: Array<Int> { get set }
    var x: Int {get set}
    var y: Int {get set}
    var abilityOfUltimate: Bool { get set }
    
    func useBasicAttack(creature: Creature) -> String
    func useUltimativeAttack(creature: Creature) -> String
    func getDamage(value: Int, from: Creature) -> String
}

enum Vector: String{
    case right="right", straight="straight", back="stbackraight", left="left"
}

protocol Item{
    var name: String { get set }
}

protocol Character: Creature{


    func goToThere(vector: Vector, disctance: Int) -> String
    func findSomething(item: Item) -> String
}


protocol Monster: Creature{
    func scream() -> String
}


class Leon: Character{
    
    var name: String
    var hp: Int
    var mp: Int
    var countForUltimate: Int
    var itemss: Array<Item>
    var canUseUltimate: Bool
    var damageRange: Array<Int>
    var x, y: Int
    var abilityOfUltimate: Bool
    
    
    init(x : Int, y : Int, z : Int){
        self.name = "Leon"
        self.hp = 100
        self.mp = 100
        self.countForUltimate = 0
        self.itemss = Array()
        self.canUseUltimate = false
        self.damageRange = [10,11,12,13,14,15]
        self.x = x
        self.y = y
        self.abilityOfUltimate = false
    }
    
    
    func goToThere(vector: Vector, disctance: Int) -> String {
        switch vector{
        case .right:
            x = x + disctance
        case .straight:
            y = y + disctance
        case .back:
            y = y - disctance
        case .left:
            x = x - disctance
        }
        return "\(name) moved to \(vector.rawValue) for \(disctance)"
    }
    
    func findSomething(item: Item) -> String {
        self.itemss.append(item)
        return "\(name) find the \(item.name)"
    }
    
    func useBasicAttack(creature: Creature) -> String {
        if countForUltimate < 5{
            countForUltimate = countForUltimate + 1
        } else {
            canUseUltimate = true
        }
        let damage = damageRange[Int.random(in: 0..<5)]
        print(creature.getDamage(value: damage, from: self))
        return "\(name) based attack"
    }
    
    func useUltimativeAttack(creature: Creature) -> String {
        if countForUltimate == 5{
            abilityOfUltimate = true
            countForUltimate = countForUltimate - 5
            return "\(name) used ultimate"
        } else {
            return "\(name) dont have power for ultimate"
        }
    }


    // Особая спосбность отражать урон
    
    func getDamage(value: Int, from: Creature) -> String {
        if abilityOfUltimate == true{
            abilityOfUltimate = false
            print(from.getDamage(value: value, from: self))
            return "\(name) has the Ultimate and dont get any damage"
        } else {
            hp = hp - value
            return "\(name) got damage: \(value)"
        }
    }

}



class Lumberjack: Character{
    
    var name: String
    var hp: Int
    var mp: Int
    var countForUltimate: Int
    var itemss: Array<Item>
    var canUseUltimate: Bool
    var damageRange: Array<Int>
    var x, y: Int
    var abilityOfUltimate: Bool
    
    
    init(x : Int, y : Int, z : Int){
        self.name = "LumberJack"
        self.hp = 100
        self.mp = 100
        self.countForUltimate = 0
        self.itemss = Array()
        self.canUseUltimate = false
        self.damageRange = [10,10,20]
        self.x = x
        self.y = y
        self.abilityOfUltimate = false
    }
    
    
    func goToThere(vector: Vector, disctance: Int) -> String {
        switch vector{
        case .right:
            x = x + disctance
        case .straight:
            y = y + disctance
        case .back:
            y = y - disctance
        case .left:
            x = x - disctance
        }
        return "\(name) moved to \(vector.rawValue) for \(disctance)"
    }
    
    func findSomething(item: Item) -> String {
        self.itemss.append(item)
        return "\(name) find the \(item.name)"
    }
    
    func useBasicAttack(creature: Creature) -> String {
        if countForUltimate < 5{
            countForUltimate = countForUltimate + 1
        } else {
            canUseUltimate = true
        }
        let damage = damageRange[Int.random(in: 0..<3)]
        print(creature.getDamage(value: damage, from: self))
        return "\(name) used basic attack"
    }
    
    func useUltimativeAttack(creature: Creature) -> String {
        if countForUltimate == 5{
            abilityOfUltimate = true
            countForUltimate = countForUltimate - 5
            print(creature.getDamage(value: 80, from: self))
            abilityOfUltimate = false
            return "\(name) used ultimate"
        } else {
            return "\(name) dont have power for ultimate"
        }
    }

    
    func getDamage(value: Int, from: Creature) -> String {
        hp = hp - value
        return "\(name) got damage: \(value)"
    }

}



class Dragon: Monster{
    
    var name: String
    var hp: Int
    var mp: Int
    var countForUltimate: Int
    var canUseUltimate: Bool
    var damageRange: Array<Int>
    var x, y: Int
    var abilityOfUltimate: Bool
    
    
    init(x : Int, y : Int, z : Int){
        self.name = "Dragon"
        self.hp = 1000
        self.mp = 100
        self.countForUltimate = 0
        self.canUseUltimate = false
        self.damageRange = [10,10,50]
        self.x = x
        self.y = y
        self.abilityOfUltimate = false
    }
    
    
    func goToThere(vector: Vector, disctance: Int) -> String {
        switch vector{
        case .right:
            x = x + disctance
        case .straight:
            y = y + disctance
        case .back:
            y = y - disctance
        case .left:
            x = x - disctance
        }
        return "\(name) moved to \(vector.rawValue) for \(disctance)"
    }
    
    
    func useBasicAttack(creature: Creature) -> String {
        if countForUltimate < 10{
            countForUltimate = countForUltimate + 1
        } else {
            canUseUltimate = true
        }
        let damage = damageRange[Int.random(in: 0..<3)]
        print(creature.getDamage(value: damage, from: self))
        return "\(name) used basic attack"
    }
    
    func useUltimativeAttack(creature: Creature) -> String {
        if countForUltimate == 5{
            abilityOfUltimate = true
            countForUltimate = countForUltimate - 5
            print(creature.getDamage(value: 100, from: self))
            abilityOfUltimate = false
            return "\(name) used ultimate"
        } else {
            return "\(name) dont have power for ultimate"
        }
    }
    
    
    func getDamage(value: Int, from: Creature) -> String {
        hp = hp - value
        return "\(name) got damage: \(value)"
    }
    
    func scream() -> String{
        return "AAAAAAAAAAAAA"
    }
    
}





class Cian: Monster{
    
    var name: String
    var hp: Int
    var mp: Int
    var countForUltimate: Int
    var canUseUltimate: Bool
    var damageRange: Array<Int>
    var x, y: Int
    var abilityOfUltimate: Bool
    
    
    init(x : Int, y : Int, z : Int){
        self.name = "Dragon"
        self.hp = 1000
        self.mp = 100
        self.countForUltimate = 0
        self.canUseUltimate = false
        self.damageRange = [25,45,75]
        self.x = x
        self.y = y
        self.abilityOfUltimate = false
    }
    
    
    func goToThere(vector: Vector, disctance: Int) -> String {
        switch vector{
        case .right:
            x = x + disctance
        case .straight:
            y = y + disctance
        case .back:
            y = y - disctance
        case .left:
            x = x - disctance
        }
        return "\(name) moved to \(vector.rawValue) for \(disctance)"
    }
    
    
    func useBasicAttack(creature: Creature) -> String {
        if countForUltimate < 10{
            countForUltimate = countForUltimate + 1
        } else {
            canUseUltimate = true
        }
        let damage = damageRange[Int.random(in: 0..<3)]
        print(creature.getDamage(value: damage, from: self))
        return "\(name) used basic attack"
    }
    
    func useUltimativeAttack(creature: Creature) -> String {
        if countForUltimate == 5{
            abilityOfUltimate = true
            countForUltimate = countForUltimate - 5
            print(creature.getDamage(value: 100, from: self))
            abilityOfUltimate = false
            return "\(name) used ultimate"
        } else {
            return "\(name) dont have power for ultimate"
        }
    }
    
    
    func getDamage(value: Int, from: Creature) -> String {
        hp = hp - value
        return "\(name) got damage: \(value)"
    }
    
    func scream() -> String{
        return "im cian"
    }
    
}

struct BookVeshanty: Item{
    var name: String
    
    init(){
        self.name = "Book of Darkness"
    }
}


// PvP



var hero1: Character = Leon(x: 2, y: 3, z: 4)
var hero2: Character  = Lumberjack(x: 2, y: 3, z: 4)

// monsters

var mon1: Monster = Dragon(x: 2, y: 3, z: 4)
var mon2: Monster = Cian(x: 2, y: 3, z: 4)

func fight(creature1: Creature, creature2: Creature) -> String{
    print("Fight start")
    while (creature1.hp > 0 && creature2.hp > 0){
        print(creature1.useBasicAttack(creature: creature2))
        print(creature1.useUltimativeAttack(creature: creature2))
        if(creature2.hp <= 0){
            return "\(creature1.name) WINS"
        }
        do {
            sleep(1)
        }
        print(creature2.useBasicAttack(creature: creature1))
        print(creature2.useUltimativeAttack(creature: creature1))
        if(creature1.hp <= 0){
            return "\(creature2.name) WINS"
        }
        do {
            sleep(1)
        }
        print(" ")
    }
    return ""
}

print(fight(creature1: hero1, creature2: hero2))

//


    




