import UIKit
import PlaygroundSupport

let view = UIView()
view.backgroundColor = .white
view.frame = CGRect(origin: .zero, size: CGSize(width: 300, height: 300))

PlaygroundPage.current.liveView = view


let layer = view.layer
let squareLayer = CALayer()
squareLayer.frame = CGRect(origin: .zero, size: CGSize(width: 300, height: 300))
layer.addSublayer(squareLayer)


let squareLayer1 = CALayer()
squareLayer1.frame = CGRect(origin: .init(x: 0, y: -20), size: CGSize(width: 300, height: 50))
squareLayer1.backgroundColor = UIColor.purple.cgColor
layer.addSublayer(squareLayer1)
squareLayer1.cornerRadius = 10


let squareLayer2 = CALayer()
squareLayer2.frame = CGRect(origin: .init(x: 0, y: 270), size: CGSize(width: 300, height: 50))
squareLayer2.backgroundColor = UIColor.purple.cgColor
layer.addSublayer(squareLayer2)
squareLayer2.cornerRadius = 10


let textLayer = CATextLayer()
textLayer.frame = CGRect(x: 50, y: 120, width: 200, height: 100)
textLayer.fontSize = 30
textLayer.string = "С 8 Марта!"
textLayer.alignmentMode = .center
textLayer.truncationMode = .end
textLayer.foregroundColor = UIColor.red.cgColor
layer.addSublayer(textLayer)


//layer.addSublayer(textLayer)
//layer.contents = UIImage(named: "rose.png")?.CGImage // 1
//layer.contentsGravity = kCAGravityResize // 2
//layer.masksToBounds = true // 3


let gradientLayer = CAGradientLayer()
gradientLayer.startPoint = .zero
gradientLayer.endPoint = CGPoint(x:1, y:1)
gradientLayer.colors = [
    UIColor.red.cgColor.copy(alpha: 0.5) as Any,
    UIColor.purple.cgColor.copy(alpha: 0.5) as Any,
    UIColor.cyan.cgColor.copy(alpha: 0.5) as Any,
]

gradientLayer.frame = layer.bounds
layer.addSublayer(gradientLayer)







