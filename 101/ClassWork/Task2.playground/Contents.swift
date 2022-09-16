import UIKit

class Student {
    private var name: String
    private var age: Int
    private var isAtUniversity: Bool
    private var lastMark: Mark
    
    init(name: String, age: Int, isAtUniversity: Bool, lastMark: Mark) {
        self.name = name
        self.age = age
        self.isAtUniversity = isAtUniversity
        self.lastMark = lastMark
    }
}

class Professor {
    private var name: String
    private var age: Int
    private var isAtUniversity: Bool
    
    init(name: String, age: Int, isAtUniversity: Bool) {
        self.name = name
        self.age = age
        self.isAtUniversity = isAtUniversity
    }
    
    func say(mark: Mark) {
        print("Допка! Твоя оценка -- \(mark)!")
    }
}

enum Mark {
    case один
    case два
    case три
    case четыре
    case пять
}


struct Class {
    var students: [Student]
    var professor: Professor
    var blackBoard: Bool
    var tablesAndChairs: Bool
}

struct University {
    var classRooms: [Class]
    var isOpen: Bool
    var isEmergency: Bool
}



// С помощью ООП и не только, опишите сущности и отношения между сущностями: Студент (cl), Профессор (cl), Оценка (enum), Класс (struct), Университет (struct). Опишите по 3 функции или параметра в каждой сущности.
