//HW игра
protocol Kick{
    func kick() -> Double
}

class Player: Kick{
    func kick() -> Double {
        let f = 101 - strength
        if(Double.random(in: 1...100) < f){
            return strength
        } else{
            return 0
    }
    }
    
    var name: String
    var hp: Double
    var strength: Double
    
    init(name: String, hp: Double, strength: Double){
        self.name = name
        self.hp = hp
        self.strength = strength
    }
}

class Monster: Kick{
    func kick() -> Double {
        let f = 101 - strength
        if(Double.random(in: 1...100) < f){
            return strength
        } else{
            return 0
    }
    }
    
    var name: String
    var hp: Double
    var strength: Double
    
    init(name: String, hp: Double, strength: Double){
        self.name = name
        self.hp = hp
        self.strength = strength
    }
}

class Game{
    private var player: Player
    
    init(player: Player){
        self.player = player
    }
    
    var strength = 1.0
    var i = 0
    func start(){
    print("The greater the impact force, the less likely it is to deal damage.")
        while(player.hp > 0 && i < 100){
            
            let monster: Monster = Monster.init(name: randomString(length: Int.random(in: 1...15)), hp: 100, strength: strength)
            print("Monster information: name - \(monster.name), HP - \(monster.hp), strength - \(monster.strength)")
            
            while(player.hp > 0 && monster.hp > 0){
                
                let playerKick = player.kick()
                monster.hp -= playerKick
                if(monster.hp <= 0){
                    print("You defeated the monster named: \(monster.name)")
                    break
                }else{
                    print("You hit the monster with force: \(playerKick). Now his HP: \(monster.hp)")
                    
                    let monsterKick = monster.kick()
                    player.hp -= monsterKick
                    if(player.hp <= 0){
                        print("You were killed by a monster named: \(monster.name)")
                        break
                    }else{
                        print("You were hit by a monster with force: \(monsterKick). Now your HP: \(player.hp)")
                    }
                }

            }
            
            if(player.hp > 0){
                print("Level \(i) passed")
                if(player.hp + strength > 100){
                    player.hp = 100
                    print("HP was restored to 100")
                }else{
                    player.hp += strength
                    print("HP was restored to \(player.hp)")
                }
            }else{
                print("You died on the \(i) level")
            }
            i += 1
            strength += 1
        }
    }
    
    func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
}

var p = Player.init(name: "LOO", hp: 100, strength: 50)
p.kick()

var g = Game.init(player: p)
g.start()
