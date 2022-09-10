import UIKit

protocol Shape {
    func countS() -> Int
}

struct Cirle: Shape {
    var radius: Int
    
    func countS() -> Int {
        3.14 * pow(radius, 2)
    }
}

struct Square: Shape {
    var side: Int
    
    func countS() -> Int {
        pow(side, 2)
    }
}

struct Triangle: Shape {
    var a, b, c: Int
    var height: Int
    
    func countS() -> Int {
        1/2 * b * height
    }
}
