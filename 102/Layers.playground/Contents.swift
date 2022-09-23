import UIKit
import PlaygroundSupport
// PlaygroundPage.current.needsIndefiniteExecution = true

let size100 = CGSize(width: 100, height: 100)
let view = UIView()
view.backgroundColor = .red
view.frame = CGRect(origin: .zero, size: CGSize(width: 800, height: 400))
PlaygroundPage.current.liveView = view

let layer = view.layer
//let squareLayer = CALayer()
//squareLayer.frame = CGRect(
//    origin: CGPoint(x: 20, y: 120),
//    size: size100
//)
//squareLayer.backgroundColor = UIColor.red.cgColor
//layer.addSublayer(squareLayer)

//let circleLayer = CALayer()
//circleLayer.backgroundColor = UIColor.gray.cgColor
//circleLayer.frame = CGRect(
//    origin: .zero, size: size100
//)
//circleLayer.cornerRadius = 50
//layer.addSublayer(circleLayer)
//circleLayer.frame.origin = CGPoint(
//    x: view.center.x
//        - circleLayer.frame.width * 0.5,
//    y: view.center.y
//        - circleLayer.frame.height * 0.5
//)

let gradientLayer = CAGradientLayer()
gradientLayer.startPoint = .zero
gradientLayer.endPoint = CGPoint(x: 1, y: 0)
gradientLayer.colors = [
    UIColor.purple.cgColor.copy(alpha: 0.5) as Any,
    UIColor.blue.cgColor.copy(alpha: 0.5) as Any,
    UIColor.purple.cgColor.copy(alpha: 0.5) as Any,

]
gradientLayer.frame = layer.bounds
layer.addSublayer(gradientLayer)

let textLayer = CATextLayer()
textLayer.frame = CGRect(x: 130, y: 50, width: 500, height: 60)
textLayer.fontSize = 60
textLayer.alignmentMode = .center
textLayer.string = "Denis Yuminov"
textLayer.isWrapped = true
textLayer.truncationMode = .end
textLayer.foregroundColor = UIColor.magenta.cgColor
layer.addSublayer(textLayer)
let shapeLayer = CAShapeLayer()
// shapeLayer.path
let secondTextLayer = CATextLayer()
secondTextLayer.frame = CGRect(x: 100, y: 150, width: 600, height: 100)
secondTextLayer.fontSize = 70
secondTextLayer.alignmentMode = .center
secondTextLayer.string = "С днем цыгана!"
secondTextLayer.isWrapped = true
secondTextLayer.truncationMode = .end
secondTextLayer.foregroundColor = UIColor.black.cgColor
layer.addSublayer(secondTextLayer)

let frameLayer1 = CALayer()
frameLayer1.frame = CGRect(
    origin: CGPoint(x: 0, y: 0),
    size: CGSize(width: 20, height: 400))
frameLayer1.backgroundColor = UIColor.yellow.cgColor
layer.addSublayer(frameLayer1)
let frameLayer2 = CALayer()
frameLayer2.frame = CGRect(
    origin: CGPoint(x: 750, y: 0),
    size: CGSize(width: 20, height: 400))
frameLayer2.backgroundColor = UIColor.yellow.cgColor
layer.addSublayer(frameLayer2)
let frameLayer3 = CALayer()
frameLayer3.frame = CGRect(
    origin: CGPoint(x: 0, y: 380),
    size: CGSize(width: 800, height: 20))
frameLayer3.backgroundColor = UIColor.yellow.cgColor
layer.addSublayer(frameLayer3)
let frameLayer4 = CALayer()
frameLayer4.frame = CGRect(
    origin: CGPoint(x: 0, y: 0),
    size: CGSize(width: 800, height: 20))
frameLayer4.backgroundColor = UIColor.yellow.cgColor
layer.addSublayer(frameLayer4)




