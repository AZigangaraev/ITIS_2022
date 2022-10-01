protocol Shape {
    func area() -> Double
}

struct Circle: Shape {
    let PI = 3.14
    var radius: Double
    func area()-> Double {
        return PI * (radius * radius)
    }
}

struct Square: Shape {
    let a: Double
    func area()-> Double {
        return a * a
    }
}

struct Triangle: Shape {
    let length: Double
    let height: Double
    func area() -> Double {
        return 0.5 * length * height
    }
}

var circle = Circle(radius: 5.0)
circle.area()

var square = Square(a: 5.0)
square.area()

var triangle = Triangle(length: 10, height: 15)
triangle.area()

import Darwin


protocol Speak {
    func say()
}


class Student {
    enum Grade {
        case five, four, three, two, one
    }

    enum Class {
        case first, second, third
    }
    let group = Class.first
    let GPA = Grade.five
    var FIO: String =  ""
}

class Professor: Speak {
    func say() {
        print("Сегодня у нас не будет пары)))")
    }
    var FIO: String =  ""
    var subject: String = ""
}

class University {
    var countOfProfessors: Int = 0
    var bestInst: String = ""
    var rektorName = ""
}

let student1 = Student()
student1.FIO = "Хайруллина Карина Айратовна"
print(student1.FIO)


