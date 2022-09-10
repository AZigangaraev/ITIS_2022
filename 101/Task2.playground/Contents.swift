import UIKit

// (Классная работа) С помощью ООП и не только, опишите сущности и отношения между сущностями: Студент, Профессор, Оценка, Класс, Университет. Опишите по 3 функции или параметра в каждой сущности.


class Student: Equatable {
    static func == (lhs: Student, rhs: Student) -> Bool {
        if lhs.age > rhs.age{
            return true
        } else {
            return false
        }
    }
    
    
    let name: String
    var age: Int
    var group: Group
    var univercity: Univercity
    var averageScore: Grade
    
    init(name: String, age: Int, group: Group, univercity: Univercity, averageScore: Grade) {
        self.name = name
        self.age = age
        self.group = group
        self.univercity = univercity
        self.averageScore = averageScore
    }
    
    func getNumberOfGroup() -> String {
        return self.group.number
    }
    
    
}

class Grade{
    
    // очень нужный класс
    
    var value: Double
    
    init(value: Double){
        self.value = value
    }
    
}

class Group{
    var number: String
    var courater: Professor
    var students: [Student]
    
    init(number: String, courater: Professor, students: [Student]) {
        self.number = number
        self.courater = courater
        self.students = students
    }
    
    func showStudents() -> Void{
        for student in self.students{
            print(student)
        }
    }
}

class Professor{
    let name: String
    var age: Int
    var univercity: Univercity
    var rating: Double
    
    init(name: String, age: Int, univercity: Univercity, rating: Double) {
        self.name = name
        self.age = age
        self.univercity = univercity
        self.rating = rating
    }
    
    func aboutMe() -> Void{
        print("My name is \(self.name) and im professor from \(self.univercity)")
    }
    
}

class Univercity{
    
    var rector: Professor
    var students: [Student]
    var professors: [Professor]
    
    init(rector: Professor , students: [Student], professors: [Professor]){
        self.rector = rector
        self.students = students
        self.professors = professors
    }
    
    func kickStudent(student: Student) -> Void{
        if let index = students.firstIndex(where: { $0 == student }) {
            students.remove(at: index)
        }
    }
    
}
