import UIKit


// (Классная работа) Создать структуры Shape, Circle, Square, Triangle; у Shape должна быть функция, которая вычисляет площадь

protocol Shape{
    
    func square() -> Double
    
}

struct Circle: Shape{

    var r: Double

    func square() -> Double{
        return Double.pi * r * r
    }
}

struct Square: Shape{
    
    var a: Double
    var b: Double
    
    
    func square() -> Double{
        return a * b
    }
    
}


struct Triangle: Shape{
    
    var a: Double
    var b: Double
    var c: Double
    
    
    func square() -> Double{
        let p: Double = (a + b + c) / 2
        return sqrt(p*(p-a)*(p-b)*(p-c))
    }
    
}
