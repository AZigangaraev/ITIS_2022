import Darwin

let sleepTime = UInt32(2)
class Character{
    var name: String
    var hp = 200
    var damage: Int
    var characterType: characterType
    
    init(characterType: characterType){
        self.characterType = characterType
        if (characterType == .magician){
            self.damage = 25
            self.name = "Маг"
        }
        else if (characterType == .archer){
            self.damage = 30
            self.name = "Лучник"
        }
        else if(characterType == .monk){
            self.damage = 35
            self.name = "Монах"
        }
        else{
            self.damage = 40
            self.name = "Рыцарь"
        }
    }
    
    func attack(monster: Monster){
        monster.hp -= damage
        print("Вы нанесли монстру \(damage)")
    }

    func useSkill(monster: Monster){
        if(characterType == .knight){
            monster.hp -= 20
            print("Вы использовали щит и нанесли монстру дополнительный урон 20")
        }
        else if(characterType == .magician){
            hp += 30;
            print("Вы излечили себя, добавив 30 очков здоровья")
        }
        else if(characterType == .monk){
            print("Вы отразили удар монстра")
        }
        else{
            monster.hp = 0
            print("Вы нанесли монстру смертельный удар")
        }
    }
}

enum characterType{
    case knight
    case magician
    case archer
    case monk
}

enum monsterType{
    case dragon
    case hog
    case zombie
}
enum treasureType{
    case axe
    case apple
    case potion
    case trap
    case cat
    case compass
}
class Treasure{
    var treasureType: treasureType
    init(treasureType: treasureType){
        self.treasureType = treasureType
    }
    func addBenefit(character: Character){
        if(treasureType == .apple){
            character.hp += 15
            print("Вы нашли яблоко. Отличное подкрепление! Добавлено 15 к здоровью.")
        }
        else if(treasureType == .axe){
            character.damage += 10
            print("Вы нашли топор. Убивайте монстров с дополнительным уроном 10.")
        }
        else if(treasureType == .potion){
            character.hp += 40
            print("Вы нашли зелье. Добавлено 40 к здоровью.")
        }
        else if(treasureType == .trap){
            character.hp -= 40
            print("Вы попались в капкан. Потеря 40 очков здоровья.")
        }
        else if(treasureType == .cat){
            print("Вы встретили кота. Он пойдет с вами.")
        }
        else{
            print("Вы нашли компас. Направляйтесь на юг.")
        }
    }
}
class Monster{
    var name: String
    var hp: Int
    var damage: Int
    var monsterType: monsterType
    
    init(monsterType: monsterType){
        self.monsterType = monsterType
        if(monsterType == .dragon){
            self.damage = 25
            self.hp = 80
            self.name = "Дракон"
        }
        else if(monsterType == .hog){
            self.damage = 15
            self.hp = 70
            self.name = "Кабан"
        }
        else{
            self.damage = 30
            self.hp = 100
            self.name = "Зомби"
        }
    }
    
    func attack(character: Character){
        if (character.characterType == .monk){
            print("Вы отклонили удар")
        }
        else{
            character.hp -= damage
            print("Вам нанесли урон \(damage)")
            
        }
    }
}

var gr = """
"Добро пожаловать в игру! Выберите персонажа:
1. Рыцарь: способность использовать щит как дополнительную атаку
2. Маг: способность восстаналивать здоровье
3. Лучник: способность нанести монстру смертельный урон
4. Монах: способность отражать удар монстра

"""

print(gr)
sleep(sleepTime)


var characterChoose = Int.random(in: 1...3)

var character: Character
if (characterChoose == 1){
    character = Character(characterType: .knight)
}
else if (characterChoose == 2){
    character = Character(characterType: .magician)
}
else{
    character = Character(characterType: .archer)
}

print("Вы - \(character.name)\n")
sleep(sleepTime)

var monsterNum = Int.random(in: 1...6)
print("Ваша цель: найти и уничтожить \(monsterNum) монстров\n")
sleep(sleepTime)

while (monsterNum != 0 && character.hp > 0){
    let step = Int.random(in: 1...18)
    sleep(sleepTime)
    if (step <= 10){
        print("Идем!\n")
        sleep(sleepTime)
        if(step == 1){
            let treasure = Treasure(treasureType: .apple)
            treasure.addBenefit(character: character)
        }
        else if(step == 2){
            let treasure = Treasure(treasureType: .potion)
            treasure.addBenefit(character: character)
        }
        else if(step == 3){
            let treasure = Treasure(treasureType: .trap)
            treasure.addBenefit(character: character)
        }
        else if(step == 4){
            let treasure = Treasure(treasureType: .cat)
            treasure.addBenefit(character: character)
        }
        else if(step == 5){
            let treasure = Treasure(treasureType: .compass)
            treasure.addBenefit(character: character)
        }
        else if(step == 6){
            let treasure = Treasure(treasureType: .axe)
            treasure.addBenefit(character: character)
        }
    }
    else{
        let curMonster = Int.random(in: 1...100)
        var monster: Monster
        
        if (curMonster < 30){
            monster = Monster(monsterType: .hog)
        }
        if(curMonster >= 30 && curMonster < 70){
            monster = Monster(monsterType: .dragon)
        }
        else{
            monster = Monster(monsterType: .zombie)
        }
        sleep(sleepTime)
        print("Вы встретили монстра: \(monster.name)\n")
        
        while (monster.hp > 0 && character.hp > 0){
            sleep(sleepTime)
            character.attack(monster: monster)
            
            if (monster.hp > 0){
                sleep(sleepTime)
                monster.attack(character: character)
            }
            
            let probability = Int.random(in: 1...10)
            if(probability < 5){
                sleep(sleepTime)
                character.useSkill(monster: monster)
            }
        }
        
        if (monster.hp <= 0){
            sleep(sleepTime)
            print("ВЫ УБИЛИ МОНСТРА\n")
            monsterNum -= 1
        }
    }
}

if (character.hp < 0){
    sleep(sleepTime)
    print("Вас убили, вы проиграли")
}
else if (monsterNum == 0){
    sleep(sleepTime)
    print("ВЫ ВЫИГРАЛИ!!!")
}

