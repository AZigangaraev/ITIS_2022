import UIKit

enum Walk {
    case forward
    case back
    case left
    case right
}

var walkArray: [Walk] = [.back, .forward, .left, .right]

enum Attributes {
    case boost
    case health
    case bounce
}

var attributesArray: [Attributes] = [.health, .boost, .bounce]


class CreatureHero {
    var name = ""
    var power = 0
    var HP = 0
    var MP = 0
    var walk = Walk.forward
    var atribut = Attributes.bounce
    func attackHero(target: CreatureMonsters)  {
        print("\(name) attacking!")
        target.HP -= power
        print("\(target.name) your health now is \(target.HP)")
    }
    func searching(atributes: Attributes) {
        switch atributes {
        case .bounce: print("\(name) find bounce")
        case .boost: print("\(name) find boost")
        case .health: print("\(name) find health")
        }
    }
    func walk(direction: Walk) {
        switch direction {
        case .back: print("\(name) go back")
        case .forward: print("\(name) go forward")
        case .left: print("\(name) go left")
        case .right: print("\(name) go right")
        }
    }
}

class Umara: CreatureHero{
        func Reflection()-> String {
            return ("Umaras MP now is :\(umara.MP)")
    }
}

class Ardrin: CreatureHero {
    func Wizard()-> String {
        return ("Ardrin MP now is:\(ardrin.MP - 300)")
    }

}

class Aisha: CreatureHero{
    func BrainScanner()-> String {
        return ("Aisha MP now is:\(aisha.MP - 400)")
    }

}


class CreatureMonsters {
    var name = ""
    var HP = 0
    var MP = 0
    var power = 0
    func attackMonster(target: CreatureHero)  {
        print("\(name) attacking!")
        target.HP -= power
        print("\(target.name) your health now is \(target.HP)")
        }
}

class Orc:CreatureMonsters {
    enum MonsterOrcSkill {
        case laser
        case acceleration
    }
}

class Horilla:CreatureMonsters {
    enum MonsterHorillaSkill {
        case mirage
        case hit
    }
}

class Tanos:CreatureMonsters {
    enum MonstterTanosSkill{
    case glove
    case power
    }
}

let creatureHero = CreatureHero()
let creatureMonsters = CreatureMonsters()

let umara = Umara()
umara.name = "Umara"
umara.HP = Int.random(in: 1000...1500)
umara.MP = 900
umara.power = Int.random(in: 50...100)


let ardrin = Ardrin()
ardrin.name = "Ardrin"
ardrin.HP = Int.random(in: 700...900)
ardrin.MP = 800
ardrin.power = Int.random(in: 70...90)


let aisha = Aisha()
aisha.name = "Aisha"
aisha.HP = Int.random(in: 1000...2000)
aisha.MP = 1500
aisha.power = Int.random(in: 100...110)


let orc = Orc()
orc.name = "Shreck"
orc.HP = Int.random(in: 600...900)
orc.MP = 500
orc.power = Int.random(in: 30...40)

let horilla = Horilla()
horilla.name = "King-Kong"
horilla.HP = Int.random(in: 1000...1200)
horilla.MP = 900
horilla.power = Int.random(in: 90...110)

let tanos = Tanos()
tanos.name = "Tanos"
tanos.HP = Int.random(in: 900...1000)
tanos.MP = 1500
tanos.power = Int.random(in: 100...105)


var heroesArray: [CreatureHero] = [umara, ardrin, aisha]
var monstersArray: [CreatureMonsters] = [orc, horilla, tanos]

var round = 1
while (umara.HP > 0) && (ardrin.HP > 0) && (aisha.HP > 0) && (orc.HP > 0) && (horilla.HP > 0) && (tanos.HP > 0) {
    print("------------------------------------- Round is \(round)")
    print("Monsters turn:")
    print()
    for monster in monstersArray {
        monster.attackMonster(target: heroesArray.randomElement()!)
    }
    
    
    print("Heroes turn:")
    print()
    for hero in heroesArray {
        hero.attackHero(target: monstersArray.randomElement()!)
        hero.walk(direction: walkArray[Int.random(in: 0...3)])
        if round % 10 == 0 {
            hero.searching(atributes: attributesArray[Int.random(in: 0...2)])
        }
    }
    
    if umara.HP | ardrin.HP | aisha.HP <= 0 {
        print("-------------------------------------")
        print("!!!Hero is dead, monsters wins!!!")
    }
    if orc.HP | horilla.HP | tanos.HP <= 0 {
        print("-------------------------------------")
        print("!!!Monster is dead, heroes wins!!!")
    }
    
    round += 1
    print()
    sleep(1)
    
}
