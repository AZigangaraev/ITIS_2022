class Human {
    init(name: String, hp: Int, damage: Int, race: String) {
        self.name = name
        self.hp = hp
        self.damage = damage
        self.race = race
        }
    
    var name = "No name"
    var hp = 100
    var damage: Int
    var race: String = "No specified"
}


class Warrior: Human {
    var armor: Int
    
    init(name: String, hp: Int, damage: Int, armor: Int, race: String) {
        self.armor = armor
        super.init(name: "No name", hp: 100, damage: 20, race: "Человек")
    }
    
    func attack(player: Human) {
        if player is Warrior {
            let enemy = player as! Warrior
            enemy.hp -= self.damage
            }
        if player.hp < 0 {
            print("KILLED")
        }
    }
}


class Shaman: Human {
    var mp: Int
    
    init(name: String, hp: Int, damage: Int, mp: Int, race: String) {
        self.mp = mp
        super.init(name: "No name", hp: 200, damage: 30, race: "Шаман")
    }
    
    func attack(player: Human) {
        if player is Shaman {
            let enemy = player as! Shaman
            enemy.hp -= self.damage
        }
        if player.hp < 0 {
            print("KILLED")
        }
    }
}


class Light: Warrior {
    var evasion_damage: Double
    
    init(name: String, hp: Int, damage: Int, evasion_damage: Double, race: String) {
        self.evasion_damage = evasion_damage
        super.init(name: "No name", hp: 200, damage: 15, armor: 5, race: "Человек")
    }
    
    func attack(player: Warrior) {
        if player is Light {
            let enemy = player as! Light
            enemy.hp -= self.damage
            }
        if player.hp < 0 {
            print("KILLED")
        }
    }
}


class Heavy: Warrior {
    // Поглощение урона
    var absorption_damage: Double
    
    init(name: String, hp: Int, damage: Int, absorption_damage: Double, race: String) {
        self.absorption_damage = absorption_damage
        super.init(name: "No name", hp: 500, damage: 40, armor: 40, race: "Человек")
    }
    
    func attack(player: Warrior) {
        if player is Heavy {
            let enemy = player as! Heavy
            enemy.hp -= self.damage
            }
        if player.hp < 0 {
            print("KILLED")
        }
    }
    
}
    

class Druid: Shaman {
    // Увеличение урона
    var buff_scale_damage: Double
    
    init(name: String, hp: Int, damage: Int, buff_scale_damage: Double, race: String) {
        self.buff_scale_damage = buff_scale_damage
        super.init(name: "No name", hp: 100, damage: 30, mp: 100, race: "Друид")
    }
    
    func attack(player: Shaman) {
        if player is Druid {
            let enemy = player as! Druid
            enemy.hp -= self.damage
        }
        if player.hp < 0 {
            print("KILLED")
        }
    }
}

class Orc: Warrior {
    var stone: Bool
    
    init(name: String, hp: Int, damage: Int, armor: Int, stone: Bool, race: String) {
        self.stone = stone
        super.init(name: "No name", hp: 100, damage: 20, armor: 100, race: "Орк")
    }
    
    func attack(player: Warrior) {
        if player is Orc {
            let enemy = player as! Orc
            enemy.hp -= self.damage
            }
        if player.hp < 0 {
            print("KILLED")
        }
    }
}


class Berserk: Orc {
    var blade_dash: Int
    
    init(name: String, hp: Int, damage: Int, armor: Int, blade_dash: Int, race: String) {
        self.blade_dash = blade_dash
        super.init(name: "No name", hp: 600, damage: 25, armor: 100, stone: false, race: "Орк")
    }
    
    func attack(player: Orc) {
        if player is Berserk {
            let enemy = player as! Berserk
            enemy.hp -= self.damage
            }
        if player.hp < 0 {
            print("KILLED")
        }
    }
}



class Create {
    var name: String
    var players: [Human] = []
    
    init(name: String) {
        self.name = name
    }
    
    func Create() {
        let i = Int.random(in: 1...7)
        
        switch i {
        case 1:
            Warrior(name: "No name", hp: 100, damage: 20, armor: 10, race: "Человек")
        case 2:
            Shaman(name: "No name", hp: 200, damage: 30, mp: 100, race: "Шаман")
        
        case 3:
            Light(name: "No name", hp: 200, damage: 15, evasion_damage: 0.9, race: "Человек")
        
        case 4:
            Heavy(name: "No name", hp: 500, damage: 40, absorption_damage: 0.7, race: "Человек")
        case 5:
            Druid(name: "No name", hp: 100, damage: 30, buff_scale_damage: 0.5, race: "Друид")
        case 6:
            Orc(name: "No name", hp: 100, damage: 20, armor: 100, stone: true, race: "Орк")
        default:
            Berserk(name: "No name", hp: 600, damage: 25, armor: 100, blade_dash: 70, race: "Орк")
        }
    }
}

// проверка hp
//var pl: Int
//var command: Int
//func health_check(pl: Int, command: Int) {
//    while pl.hp <= 0 {
//        pl = pl.randomElement(command)
//    }
//    return pl
//}

var human_command = [Heavy: 30, Light: 10, Druid: 5]
var orc_command = [Shaman: 5, Berserk: 20]

var human_command_list: [Any] = []
for (k, v) in human_command.keys {
    for _ in (v) {
        human_command_list.append(contentsOf: k)
    }
}

var orc_comand_list: [Any] = []
for (k, v) in human_command.keys {
    for _ in (v) {
        orc_comand_list.append(contentsOf: k)
    }
}

                    
                    


