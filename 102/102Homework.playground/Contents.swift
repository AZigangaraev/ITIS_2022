import UIKit
import PlaygroundSupport

let view = UIView()
let layer = view.layer

view.backgroundColor = .white
view.frame = CGRect(origin: .zero, size: CGSize(width: 400, height: 600))
PlaygroundPage.current.liveView = view

//верхний прямоугольник
let sizeSquare = CGSize(width: 300, height: 200)
let squareLayer = CALayer()
squareLayer.cornerRadius = 20
squareLayer.opacity = 0.5
squareLayer.frame = CGRect(
    origin: CGPoint(x: 50, y: 20),
    size: sizeSquare
)
squareLayer.backgroundColor = UIColor.green.cgColor
layer.addSublayer(squareLayer)


//шары
let sizeCircle = CGSize(width: 150, height: 150)

let circleLayer = CALayer()
circleLayer.cornerRadius = 70
circleLayer.opacity = 0.4
circleLayer.frame = CGRect(
    origin: CGPoint(x: 125, y: 250),
    size: sizeCircle
)

let circleLayer2 = CALayer()
circleLayer2.cornerRadius = 70
circleLayer2.opacity = 0.4
circleLayer2.frame = CGRect(
    origin: CGPoint(x: 225, y: 400),
    size: sizeCircle
)

let circleLayer3 = CALayer()
circleLayer3.cornerRadius = 70
circleLayer3.opacity = 0.4
circleLayer3.frame = CGRect(
    origin: CGPoint(x: 25, y: 400),
    size: sizeCircle
)

circleLayer.backgroundColor = UIColor.systemRed.cgColor
circleLayer2.backgroundColor = UIColor.systemMint.cgColor
circleLayer3.backgroundColor = UIColor.systemYellow.cgColor
layer.addSublayer(circleLayer)
layer.addSublayer(circleLayer2)
layer.addSublayer(circleLayer3)

//текст в картинках
let textLayer = CATextLayer()
 textLayer.frame = CGRect(
     origin: CGPoint(x: 65, y: 90),
     size: CGSize(width: 300, height: 200)
 )
 textLayer.string = "Merry Christmas!"
 textLayer.foregroundColor = UIColor.black.cgColor
 layer.addSublayer(textLayer)


let textLayer1 = CATextLayer()
 textLayer1.frame = CGRect(
     origin: CGPoint(x: 160, y: 300),
     size: CGSize(width: 150, height: 150)
 )
 textLayer1.string = "Wish"
 textLayer1.foregroundColor = UIColor.black.cgColor
 layer.addSublayer(textLayer1)

let textLayer2 = CATextLayer()
 textLayer2.frame = CGRect(
     origin: CGPoint(x: 70, y: 450),
     size: CGSize(width: 150, height: 150)
 )
 textLayer2.string = "you"
 textLayer2.foregroundColor = UIColor.black.cgColor
 layer.addSublayer(textLayer2)

let textLayer3 = CATextLayer()
 textLayer3.frame = CGRect(
     origin: CGPoint(x: 250, y: 450),
     size: CGSize(width: 150, height: 150)
 )
 textLayer3.string = "happy!"
 textLayer3.foregroundColor = UIColor.black.cgColor
 layer.addSublayer(textLayer3)


//линия для шаров
let sizeLine = CGSize(width: 2, height: 180)
let line = CALayer()
line.frame = CGRect(
    origin: CGPoint(x: 100, y: 220),
    size: sizeLine
)
line.backgroundColor = UIColor.black.cgColor
layer.addSublayer(line)

let sizeLine1 = CGSize(width: 2, height: 180)
let line1 = CALayer()
line1.frame = CGRect(
    origin: CGPoint(x: 300, y: 220),
    size: sizeLine1
)
line1.backgroundColor = UIColor.black.cgColor
layer.addSublayer(line1)

let sizeLine2 = CGSize(width: 2, height: 30)
let line2 = CALayer()
line2.frame = CGRect(
    origin: CGPoint(x: 200, y: 220),
    size: sizeLine2
)
line2.backgroundColor = UIColor.black.cgColor
layer.addSublayer(line2)


//градиент
let gradientLayer = CAGradientLayer()
 gradientLayer.startPoint = .zero
 gradientLayer.endPoint = CGPoint(x: 1, y: 1)
 gradientLayer.colors = [
     UIColor.green.cgColor.copy(alpha: 0.2) as Any,
     UIColor.red.cgColor.copy(alpha: 0.2) as Any,
     UIColor.blue.cgColor.copy(alpha: 0.2) as Any,
 ]
 gradientLayer.frame = layer.bounds
 layer.addSublayer(gradientLayer)
