import UIKit

//
// Terletskiy Danil, 11-108. DnD-style game
//

protocol CharacterProtocol: AnyObject {
    var characterName: String { get set }
    
    var characterClass: CharacterClass { get set }
    
    var attackStrength: Int { get set }

    var HP: Int { get set }
    var location: Int { get set }
    
    
    func go(for_number_of steps: Int)
    func attack(gameCharacter: CharacterProtocol)
}


enum CharacterClass {
    case zombie
    case spider
    case hero
    
    var rawValue: String {
        switch self {
        case .zombie: return "Zombie"
        case .spider: return "Spider"
        case .hero: return "Hero"
        }
    }
}


class Hero: CharacterProtocol {
    var characterName: String
    var characterClass: CharacterClass
    
    var attackStrength: Int
    
    var HP: Int
    var MP: Int = 0
    var location: Int
    
    
    init(characterName: String, characterClass: CharacterClass, attackStrength: Int, HP: Int, MP: Int, location: Int) {
        self.characterName = characterName
        self.characterClass = characterClass
        self.attackStrength = attackStrength
        self.HP = HP
        self.MP = MP
        self.location = location
        
        print("Hero \(characterName) was created!")
    }
    
    func go(for_number_of steps: Int) {
            
        self.location += steps
        
        if self.MP < 15 {
            self.MP += 5
        }
        
        
        print("\(characterName) made a move on \(steps) and now on \(location)")
        print("\(characterName) mana equals \(MP)")
    }
    
    func attack(gameCharacter: CharacterProtocol) {
    
        if self.MP == 15 && Bool.random() == true {
            gameCharacter.HP = gameCharacter.HP - (self.attackStrength * 2)
            self.MP = 0
            print("[\(self.characterName)] Kick with mana by \(self.attackStrength)! \(gameCharacter.characterName) HP is \(gameCharacter.HP)\n")
        } else {
            gameCharacter.HP = gameCharacter.HP - self.attackStrength
            print("[\(self.characterName)] Kick by \(self.attackStrength)! \(gameCharacter.characterName) HP is \(gameCharacter.HP)\n")
        }
    }
    
    func skip() {
        self.location += 0
    }
}


class Zombie: CharacterProtocol {
    var characterName: String
    var characterClass: CharacterClass
    
    var attackStrength: Int
    
    var HP: Int
    var location: Int
    
    
    init(characterName: String, characterClass: CharacterClass, attackStrength: Int, HP: Int,
         location: Int) {
        self.characterName = characterName
        self.characterClass = characterClass
        self.attackStrength = attackStrength
        self.HP = HP
        self.location = location
        
        print("Zombie \(characterName) was created!")
    }
    
    func go(for_number_of steps: Int) {
        self.location += steps
        
        print("\(characterName) made a move on \(steps) and now on \(location)")
    }
    
    func attack(gameCharacter: CharacterProtocol) {
        gameCharacter.HP = gameCharacter.HP - self.attackStrength
        print("[\(self.characterName)] Kick by \(self.attackStrength)! \(gameCharacter.characterName) HP is \(gameCharacter.HP)\n")
    }
}


class Spider: CharacterProtocol {
    var characterName: String
    var characterClass: CharacterClass
    
    var attackStrength: Int
    
    var HP: Int
    var location: Int
    
    
    init(characterName: String, characterClass: CharacterClass, attackStrength: Int, HP: Int,
         location: Int) {
        self.characterName = characterName
        self.characterClass = characterClass
        self.attackStrength = attackStrength
        self.HP = HP
        self.location = location
        
        print("Spider \(characterName) was created!")
    }
    
    func go(for_number_of steps: Int) {
        self.location += steps
        
        print("\(characterName) made a move on \(steps) and now on \(location)")
    }
    
    func attack(gameCharacter: CharacterProtocol) {
        gameCharacter.HP = gameCharacter.HP - self.attackStrength
        print("[\(self.characterName)] Kick by \(self.attackStrength)! \(gameCharacter.characterName) HP is \(gameCharacter.HP)\n")
    }
}


func find(objectToFind: CharacterProtocol, arrayName: Array<CharacterProtocol>) -> Int {
   for i in 0...arrayName.count {
       if arrayName[i].characterName == objectToFind.characterName {
         return i
      }
   }
    return -1
}


func kickFromGame(enemy: CharacterProtocol, enemies: inout Array<CharacterProtocol>) {
    enemies.remove(at: find(objectToFind: enemy, arrayName: enemies))
}


func startGame() {
    let hero1 = Hero(characterName: "Player 1", characterClass: .hero, attackStrength: 20, HP: 100, MP: 0, location: 0)
    let spider = Spider(characterName: "Spider", characterClass: .spider, attackStrength: 15, HP: 100, location: 3)
    let zombie = Zombie(characterName: "Zombie", characterClass: .zombie, attackStrength: 25, HP: 100, location: 5)
    
    var enemies: [CharacterProtocol] = [hero1, spider, zombie]
    var stepCounter: Int = 0
        
    
    while hero1.HP >= 0 || (zombie.HP >= 0 || spider.HP >= 0) {
        
        if zombie.HP == 0 && spider.HP == 0 {
            print("Heroes have a win!")
            exit(0)
        }
        

        if stepCounter != 100 {
            for _ in enemies {
                let enemy = enemies.randomElement()!
                
                enemy.go(for_number_of: Int.random(in: 1..<5))
                
                stepCounter += 1
                
                for e in enemies {
                    
                    switch (enemy.characterClass, e.characterClass) {
                        // if the player is fighting with the monster
                    case (.hero, .zombie):
                        if zombie.HP <= 0 {
                            kickFromGame(enemy: zombie, enemies: &enemies)
                            print("\n[\(zombie.characterName)] I'm at 0 HP, so I'm dead!\n")
                        } else {
                            if enemy.location == e.location {
                                print("\n\(enemy.characterName) and \(e.characterName) have a fight!")
                                enemy.attack(gameCharacter: e)
                                
                                break
                            }
                        }
                        
                    case (.hero, .spider):
                        if spider.HP <= 0 {
                            kickFromGame(enemy: spider, enemies: &enemies)
                            print("\n[\(spider.characterName)] I'm at 0 HP, so I'm dead!\n")
                        } else {
                            if enemy.location == e.location {
                                print("\n\(enemy.characterName) and \(e.characterName) have a fight!")
                                enemy.attack(gameCharacter: e)
                                
                                break
                            }
                        }
                        
                    case (.zombie, .hero):
                        if hero1.HP <= 0 {
                            kickFromGame(enemy: hero1, enemies: &enemies)
                            print("Monsters have a win!")
                            exit(0)
                        } else {
                            if enemy.location == e.location {
                                print("\n\(enemy.characterName) and \(e.characterName) have a fight!")
                                enemy.attack(gameCharacter: e)
                                
                            }
                        }
                        
                    case (.spider, .hero):
                        if hero1.HP <= 0 {
                            kickFromGame(enemy: hero1, enemies: &enemies)
                            print("Monsters have a win!")
                            exit(0)
                        } else {
                            if enemy.location == e.location {
                                print("\(enemy.characterName) and \(e.characterName) have a fight!\n")
                                enemy.attack(gameCharacter: e)
                            }
                        }
                        
                        // else break and do the next step
                    default:
                        break
                    }
                    
                }
                
            }
        } else {
            print("Game over! Score of 100 steps was reached!")
            exit(0)
        }
    }
}

startGame()

