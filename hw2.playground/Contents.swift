import UIKit
import PlaygroundSupport
let squareSize = CGSize(width: 350, height: 470)
let view = UIView()
view.backgroundColor = .white
view.frame = CGRect(origin: .zero, size: CGSize(width: 400, height: 500))
PlaygroundPage.current.liveView = view

let layer = view.layer
let squareLayer = CALayer()
squareLayer.frame = CGRect(
    origin: CGPoint(x: 25, y: 15),
    size: squareSize
)
squareLayer.cornerRadius = 20
squareLayer.backgroundColor = UIColor.magenta.cgColor
layer.addSublayer(squareLayer)


let textLayer = CATextLayer()
textLayer.frame = CGRect(x: 50, y: 200, width: 300, height: 400)
textLayer.fontSize = 36
textLayer.alignmentMode = .center
textLayer.string = "you will succeed!!!"
textLayer.isWrapped = true
textLayer.foregroundColor = UIColor.black.cgColor
layer.addSublayer(textLayer)

let gradientLayer = CAGradientLayer()
gradientLayer.startPoint = .zero
gradientLayer.endPoint = CGPoint(x: 2, y: 4)
gradientLayer.colors = [
    UIColor.magenta.cgColor.copy(alpha: 0.25) as Any,
    UIColor.purple.cgColor.copy(alpha: 0.3) as Any,
]
gradientLayer.frame = layer.bounds
layer.addSublayer(gradientLayer)
