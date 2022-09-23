import UIKit
import PlaygroundSupport

let view = UIView()
view.backgroundColor = .white
view.frame = CGRect(origin: .zero, size: CGSize(width: 300, height: 600))
PlaygroundPage.current.liveView = view

let layer = view.layer
let squareSize = CGSize(width: 200, height: 200)
let squareLayer = CALayer()
squareLayer.frame = CGRect(
    origin: CGPoint(x: 50, y: 200),
    size: squareSize
)
squareLayer.cornerRadius = 20
squareLayer.backgroundColor = UIColor.purple.cgColor
layer.addSublayer(squareLayer)

let gradientLayer = CAGradientLayer()
gradientLayer.startPoint = .zero
gradientLayer.endPoint = CGPoint(x: 1, y: 1)
gradientLayer.colors = [
    UIColor.red.cgColor.copy(alpha: 0.2) as Any,
    UIColor.purple.cgColor.copy(alpha: 0.2) as Any,
    UIColor.cyan.cgColor.copy(alpha: 0.2) as Any,
    UIColor.green.cgColor.copy(alpha: 0.2) as Any,
]
gradientLayer.frame = layer.bounds
layer.addSublayer(gradientLayer)

let textLayer = CATextLayer()
textLayer.frame = CGRect(x: 50, y: 275, width: 200, height: 400)
textLayer.fontSize = 12
textLayer.alignmentMode = .center
textLayer.string = "Привет! Поздравляю тебя с днем рождения! Желаю счастья, здоровья и всего наилучшего!"
textLayer.isWrapped = true

textLayer.foregroundColor = UIColor.black.cgColor
layer.addSublayer(textLayer)
