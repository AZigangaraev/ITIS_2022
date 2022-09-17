import UIKit
import Darwin

enum HeroSkills: String {
    case Counterspell = "Counterspell"
    case WraithfireBlast = "WraithfireBlast"
    case ArcaneBolt = "ArcaneBolt"
    case Fireblast = "Fireblast"
    case Ignite = "Ignite"
}

enum CripSkills: String {
    case Silence = "Silence"
    case Stun = "Stun"
    case Weakness = "Weakness"
}

protocol HeroStats {
    var name: String { get }
    var damage: Int { get }
    var HP: Int { get set }
    var MP: Int { get set }
    var skill: HeroSkills { get }
}

protocol CripStats {
    var name: String { get }
    var damage: Int { get }
    var HP: Int { get set }
    var MP: Int { get set }
    var skill: CripSkills { get }
}

enum Movement {
    case left
    case right
    case backward
    case forward
}

let movementArray: [Movement] = [.left, .right, .backward, .forward]

enum Artifacts: String {
    case Satanic
    case Daedalus
    case HeartOfTarrasque
    case SkullBasher
    case OrchidMalevolence
}

let artifactsArray: [Artifacts] = [.SkullBasher, .OrchidMalevolence, .HeartOfTarrasque, .Satanic, .Daedalus]

class Hero: HeroStats {
    var name: String
    var damage: Int
    var HP: Int
    var MP: Int
    var skill: HeroSkills
    
    init(name: String, damage: Int, HP: Int, MP: Int, skill:HeroSkills) {
        self.name = name
        self.damage = damage
        self.HP = HP
        self.MP = MP
        self.skill = skill
    }
    
    func presentHero() -> String {
        return "\(name) вышел в туман войны, чтобы защитить древнего! У него \(damage) урона, \(HP) здоровья, \(MP) маны и его главный скилл - \(skill)"
    }
    
    func heroAttack(target: Crip) {
        print("\(name) attacks \(target.name)")
        target.HP -= damage
        print("\(target.name) now has \(target.HP) HP")
        print()
    }
    
    func findArtifacts(artifacts: Artifacts) {
        switch artifacts {
        case .Satanic: print("\(name) find Satanic")
        case .HeartOfTarrasque: print("\(name) find Heart Of Tarrasque")
        case .OrchidMalevolence: print("\(name) find Orchid Malevolence")
        case .SkullBasher: print("\(name) find Skull Basher")
        case .Daedalus: print("\(name) find Daedalus")
        }
        print()
    }
    
    func movement(direction: Movement) {
        switch direction {
        case .backward: print("\(name) go backward")
        case .forward: print("\(name) go forward")
        case .left: print("\(name) go left")
        case .right: print("\(name) go right")
        }
        print()
    }

}

class Crip: CripStats {
    var name: String
    var damage: Int
    var HP: Int
    var MP: Int
    var skill: CripSkills
    
    init(name: String, damage: Int, HP: Int, MP: Int, skill:CripSkills) {
        self.name = name
        self.damage = damage
        self.HP = HP
        self.MP = MP
        self.skill = skill
    }
    
    func presentCrip() -> String {
        return "\(name) ступил на поле битвы! У крипа \(damage) урона, \(HP) здоровья, \(MP) маны , его скилл - \(skill)"
    }
    
    func cripAttack(target: Hero) {
        print("\(name) attacks \(target.name)")
        target.HP -= damage
        print("\(target.name) now has \(target.HP) HP")
        print()
    }
    
}

let antimage = Hero.init(name: "Anti-mage", damage: Int.random(in: 10...30), HP: Int.random(in: 1000...3000), MP: Int.random(in: 200...500), skill: HeroSkills.Counterspell)
let pudge = Hero.init(name: "Pudge", damage: Int.random(in: 10...30), HP: Int.random(in: 1000...3000), MP: Int.random(in: 200...500), skill: HeroSkills.Ignite)
let wraihKing = Hero.init(name: "Wraith King", damage: Int.random(in: 10...30), HP: Int.random(in: 1000...3000), MP: Int.random(in: 200...500), skill: HeroSkills.WraithfireBlast)

print(antimage.presentHero())
print(pudge.presentHero())
print(wraihKing.presentHero())

print()

let lowCrip = Crip.init(name: "Ghost", damage: Int.random(in: 10...30), HP: Int.random(in: 1000...3000), MP: Int.random(in: 10...40), skill: CripSkills.Silence)
let middleCrip = Crip.init(name: "Golem", damage: Int.random(in: 10...30), HP: Int.random(in: 1000...3000), MP: Int.random(in: 80...150), skill: CripSkills.Stun)
let hardCrip = Crip.init(name: "Dragon", damage: Int.random(in: 10...30), HP: Int.random(in: 1000...3000), MP: Int.random(in: 100...300), skill: CripSkills.Weakness)
print(lowCrip.presentCrip())
print(middleCrip.presentCrip())
print(hardCrip.presentCrip())

print()


var heroes: [Hero] = [antimage, pudge, wraihKing]
var crips: [Crip] = [lowCrip, middleCrip, hardCrip]


class Game {
    func startGame() {
        for time in 1...100 {
            print("==================================================== Ход раунда: \(time)")
            for hero in heroes {
                hero.heroAttack(target: crips.randomElement()!)
            }
            if antimage.HP | pudge.HP | wraihKing.HP <= 0 {
                print("==================================================== Game over, Crips win!")
                break;
            }
            
            heroes[Int.random(in: 0...2)].movement(direction: movementArray[Int.random(in: 0...3)])
            
            if time % 23 == 0 {
                heroes[Int.random(in: 0...2)].findArtifacts(artifacts: artifactsArray[Int.random(in: 0...4)])
            }
            
            for crip in crips {
                crip.cripAttack(target: heroes.randomElement()!)
            }
            if lowCrip.HP | middleCrip.HP | hardCrip.HP <= 0 {
                print("==================================================== Game over, Heroes win!")
                break;
            }
        }
    }
}

var Dota2 = Game()
Dota2.startGame()
