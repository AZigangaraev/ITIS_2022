import UIKit
import PlaygroundSupport

let size100 = CGSize(width: 100, height: 100)
let view = UIView()
view.backgroundColor = .blue
view.frame = CGRect(origin: .zero, size: CGSize(width: 500, height: 400))
PlaygroundPage.current.liveView = view

let layer = view.layer
let squareLayer = CALayer()
squareLayer.cornerRadius = 50
squareLayer.frame = CGRect(
    origin: CGPoint(x: 20, y: 20),
    size: size100
)
squareLayer.backgroundColor = UIColor.red.cgColor
layer.addSublayer(squareLayer)


let gradientLayer = CAGradientLayer()
gradientLayer.startPoint = .zero
gradientLayer.endPoint = CGPoint(x: 1, y: 1)
gradientLayer.colors = [
    UIColor.green.cgColor.copy(alpha: 0.1) as Any,
    UIColor.orange.cgColor.copy(alpha: 0.5) as Any,
    UIColor.red.cgColor.copy(alpha: 0.5) as Any,
]
gradientLayer.frame = layer.bounds
layer.addSublayer(gradientLayer)

let textLayer = CATextLayer()
textLayer.frame = CGRect(x: 170, y: 50, width: 400, height: 30)
textLayer.fontSize = 27
textLayer.string = "С новым 2008 годом!"
textLayer.foregroundColor = UIColor.white.cgColor
textLayer.contentsScale = UIScreen.main.scale
layer.addSublayer(textLayer)
 

let SecondTextLayer = CATextLayer()
SecondTextLayer.frame = CGRect(x: 120, y: 250, width: 700, height: 30)
SecondTextLayer.fontSize = 20
SecondTextLayer.string = "Счастья, здоровья и успехов!!!"
SecondTextLayer.foregroundColor = UIColor.white.cgColor
SecondTextLayer.contentsScale = UIScreen.main.scale
layer.addSublayer(SecondTextLayer)
