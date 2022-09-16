import Darwin
protocol Shape{
    func countSquare() -> Double
}
struct Circle: Shape{
    var radius: Double
    
    init(radius: Double){
        self.radius=radius
    }
    
    func countSquare() -> Double{
        return 3.14 * radius
    }
}

struct Square{
    
    var a: Double
    var b: Double
    
    init(a: Double, b: Double){
        self.a = a
        self.b = b
    }
    
    func countSquare() -> Double{
        return a*b
    }
}
struct Triangle: Shape{
    
    var a: Double
    var b: Double
    var c: Double
    
    init(a: Double, b: Double, c: Double){
        self.a = a
        self.b = b
        self.c = c
    }
    
    func countSquare() -> Double{
        var p = (a+b+c)/2
        return sqrt(p*(p-a)*(p-b)*(p-c))
    }
}

var c1 = Circle(radius: 2)
print(c1.countSquare())

var s1 = Square(a: 2, b: 3)
print(s1.countSquare())

var t1 = Triangle(a: 3, b: 4, c: 5)
print(t1.countSquare())


