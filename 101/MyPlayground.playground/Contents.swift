import Darwin
import Foundation

enum heroClasses{
    case Archer
    case Fighter
    case Warlock
    case Rogue
}

enum monstersClasses{
    case Wolf
    case Dragon
    case Zombie
    case Spider
}
protocol Hero {
    var manaPoints: Double {get set}
    var healthPoints: Double {get set}
    var heroClass: heroClasses {get set}
    var heroDamage: Double {get set}
}

protocol Monster {
    var id: Int {get set}
    var healthPoints: Double {get set}
    var manaPoints: Double {get set}
    var monsterClass: monstersClasses {get set}
    var monsterDamage: Double {get set}
}

class Archer: Hero{
    var manaPoints: Double
    var healthPoints: Double
    var heroClass: heroClasses
    var heroDamage: Double
    var id: Int
    init(){
        self.id = Int.random(in: 1..<100)
        self.healthPoints = 100.0
        self.manaPoints = 80.0
        self.heroDamage = 30.0
        self.heroClass = .Archer
    }
}
class Fighter: Hero{
    var manaPoints: Double
    var healthPoints: Double
    var heroClass: heroClasses
    var heroDamage: Double
    var id: Int
    init(){
        self.id = Int.random(in: 1..<100)
        self.healthPoints = 170.0
        self.manaPoints = 50.0
        self.heroDamage = 30.0
        self.heroClass = .Fighter
    }
}
class Rogue: Hero{
    var manaPoints: Double
    var healthPoints: Double
    var heroClass: heroClasses
    var heroDamage: Double
    var id: Int
    init(){
        self.id = Int.random(in: 1..<100)
        self.healthPoints = 120.0
        self.manaPoints = 80.0
        self.heroDamage = 20.0
        self.heroClass = .Rogue
    }
}
class Warlock: Hero{
    var manaPoints: Double
    var healthPoints: Double
    var heroClass: heroClasses
    var heroDamage: Double
    var id: Int
    init(){
        self.id = Int.random(in: 1..<100)
        self.healthPoints = 70.0
        self.manaPoints = 110.0
        self.heroDamage = 30.0
        self.heroClass = .Warlock
    }
}
class Wolf: Monster{
    var id: Int
    var healthPoints: Double
    var manaPoints: Double
    var monsterDamage: Double
    var monsterClass: monstersClasses
    init(){
        self.id = Int.random(in: 1..<100)
        self.healthPoints = 20.0
        self.manaPoints = 10.0
        self.monsterDamage = 5.0
        self.monsterClass = .Wolf
    }
}
    
class Dragon: Monster{
    var id: Int
    var healthPoints: Double
    var manaPoints: Double
    var monsterDamage: Double
    var monsterClass: monstersClasses
    init(){
        self.id = Int.random(in: 1..<100)
        self.healthPoints = 50.0
        self.manaPoints = 30.0
        self.monsterDamage = 25.0
        self.monsterClass = .Dragon
    }
}
class Zombie: Monster{
    var id: Int
    var healthPoints: Double
    var manaPoints: Double
    var monsterDamage: Double
    var monsterClass: monstersClasses
    init(){
        self.id = Int.random(in: 1..<100)
        self.healthPoints = 40.0
        self.manaPoints = 10.0
        self.monsterDamage = 15.0
        self.monsterClass = .Zombie
    }
}
class Spider: Monster{
    var id: Int
    var healthPoints: Double
    var manaPoints: Double
    var monsterDamage: Double
    var monsterClass: monstersClasses
    init(){
        self.id = Int.random(in: 1..<100)
        self.healthPoints = 10.0
        self.manaPoints = 10.0
        self.monsterDamage = 5.0
        self.monsterClass = .Spider
    }
}
var Monsters: [Monster] = [
    Spider(),
    Zombie(),
    Zombie(),
    Wolf(),
    Wolf(),
    Dragon()
]
func startingGame(){

    let hero: [Hero] = [Warlock(), Rogue(), Fighter(), Archer()]
    var randomHero = hero.randomElement()
    print("Starting game. Your hero is \(randomHero!.heroClass). Your hp: \(randomHero!.healthPoints). Your mana: \(randomHero!.manaPoints). Your damage: \(randomHero!.heroDamage). Total enemies: \(Monsters.count).")
    while (randomHero!.healthPoints > 0) && (Monsters.count > 0){
        print("You have 3 roads to go: 1, 2, 3. It will be choosed randomly.")
        let x = Int.random(in: 1..<4)
        if x == 1{
            print("Now we will have a fight with MONSTER")
            fighting(hero: randomHero!)
        }
        if x == 2{
            randomHero?.healthPoints += 50.0
            print("Congratulations!!! You found a healing bottle. Your hp is increased to \(String(describing: randomHero!.healthPoints)).")
        }
        if x == 3{
            randomHero?.healthPoints -= 20
            print("Trap, your hp -20.")
        }
        if x == 4{
            print("Oh no, there are two monsters!")
            fighting(hero: randomHero!)
            fighting(hero: randomHero!)
        }
    }
    print("You win!")
    exit(0)
}
func fighting(hero: Hero){
    var heroo = hero
    let monsterIndex = Monsters.indices.randomElement()!
    var monsterr = Monsters[monsterIndex]
    while (heroo.healthPoints > 0) && (monsterr.healthPoints > 0){
        print("Your hp and mp: \(heroo.healthPoints), \(heroo.manaPoints), enemy's hp and mp: \(monsterr.healthPoints), \(monsterr.manaPoints).")
        print("Enemy attacking")
        heroo.healthPoints -= monsterr.monsterDamage
        print("\(monsterr.monsterClass) deals \(monsterr.monsterDamage) to you.")
        if heroo.healthPoints > 0{
            print("Your attack")
            monsterr.healthPoints -= heroo.heroDamage
            print("\(monsterr.monsterClass) takes \(heroo.heroDamage) from you.")
            if monsterr.healthPoints < 0{
                print("Enemy dead")
                Monsters.remove(at:monsterIndex)
                }
            }
        else{
            print("Game over")
            exit(0)
        }

        }
    }

startingGame()
