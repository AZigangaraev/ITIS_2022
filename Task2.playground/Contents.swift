class Student{
    var group: Group
    var favProfessor: Professor
    
    init(group: Group, favProfessor: Professor){
        self.group = group
        self.favProfessor = favProfessor
    }
    func study() -> String{
        return "тяжело..."
    }
}

class Professor{
    var name: String
    var groups = [Group]()
    
    init(name: String){
        self.name = name
    }
    
    func addGroup(group: Group){
        groups.append(group)
    }
    
    func study() -> String{
        return "Я устал, я ухожу"
    }
    
}
enum Score{
    case perfect
    case norm
    case bad
}
struct University{
    var city: String
    var name: String
    var students = [Student]()
    
    init(city: String, name: String){
        self.city = city
        self.name = name
    }
    
    mutating func addStudent(student: Student){
        students.append(student)
    }
}
struct Group{
    
    var number: Int
    var avScore: Score
    var starosta: Student

    init(number: Int, avScore: Score, starosta: Student){
        self.number = number
        self.avScore = avScore
        self.starosta = starosta
    }
}
