

import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let size = CGSize(width: 100, height: 100)
let view = UIView()
view.backgroundColor = .blue
view.frame = CGRect(origin: .zero, size: CGSize(width: 500, height: 500))
PlaygroundPage.current.liveView = view

let layer = view.layer

let circleLayer = CALayer()
circleLayer.backgroundColor = UIColor.gray.cgColor
circleLayer.frame = CGRect(
    origin: .zero, size: CGSize(width: 450, height: 100)
)

circleLayer.opacity = 1.2

circleLayer.cornerRadius = 10
layer.addSublayer(circleLayer)

circleLayer.frame.origin = CGPoint(
    x: view.center.x
        - circleLayer.frame.width * 0.5,
    y: view.center.y
    - circleLayer.frame.height * 2.2
)

let gradientLayer = CAGradientLayer()

gradientLayer.startPoint = .zero
gradientLayer.endPoint = CGPoint(x: 1, y: 1)
gradientLayer.colors = [
    UIColor.green.cgColor.copy(alpha: 0.5) as Any,
    UIColor.purple.cgColor.copy(alpha: 0.5) as Any,
    UIColor.cyan.cgColor.copy(alpha: 0.5) as Any,
]

gradientLayer.frame = layer.bounds
layer.addSublayer(gradientLayer)

let textlayer = CATextLayer()

textlayer.frame = CGRect(origin: .zero,
                         size: CGSize(width: 350, height: 70))
textlayer.frame.origin = CGPoint(
    x: view.center.x
    - textlayer.frame.width * 0.5,
    y: view.center.y
    - circleLayer.frame.height * 2.0
)

textlayer.fontSize = 19
textlayer.string = """
С днем рождения!

Желаю :
"""
textlayer.isWrapped = true
textlayer.alignmentMode = .center
textlayer.foregroundColor = UIColor.white.cgColor

layer.addSublayer(textlayer)

let circleLayer1 = CALayer()
circleLayer1.backgroundColor = UIColor.gray.cgColor
circleLayer1.frame = CGRect(
    origin: .zero, size: CGSize(width: 120, height: 120)
)

circleLayer1.opacity = 1.2

circleLayer1.cornerRadius = 50
layer.addSublayer(circleLayer1)

circleLayer1.frame.origin = CGPoint(
    x: view.center.x
        - circleLayer.frame.width * -0.25,
    y: view.center.y
    - circleLayer.frame.height * 0.2
)

let textlayer1 = CATextLayer()

textlayer1.frame = CGRect(origin: .zero,
                         size: CGSize(width: 94, height: 70))
textlayer1.frame.origin = CGPoint(
    x: view.center.x
    - textlayer.frame.width * -0.35,
    y: view.center.y
    - circleLayer.frame.height * -0.25
)

textlayer1.fontSize = 20
textlayer1.string = "Здоровье"
textlayer1.isWrapped = true
textlayer.truncationMode = .end
textlayer1.alignmentMode = .center
textlayer1.foregroundColor = UIColor.white.cgColor

layer.addSublayer(textlayer1)


let circleLayer2 = CALayer()
circleLayer2.backgroundColor = UIColor.gray.cgColor
circleLayer2.frame = CGRect(
    origin: .zero, size: CGSize(width: 120, height: 120)
)

circleLayer2.opacity = 1.2

circleLayer2.cornerRadius = 50
layer.addSublayer(circleLayer2)

circleLayer2.frame.origin = CGPoint(
    x: view.center.x
    - circleLayer.frame.width * 0.5,
    y: view.center.y
    - circleLayer.frame.height * 0.2
)

let textlayer2 = CATextLayer()

textlayer2.frame = CGRect(origin: .zero,
                         size: CGSize(width: 94, height: 70))
textlayer2.frame.origin = CGPoint(
    x: view.center.x
    - textlayer.frame.width * 0.61,
    y: view.center.y
    - circleLayer.frame.height * -0.28
)

textlayer2.fontSize = 20
textlayer2.string = "Счастье"
textlayer2.isWrapped = true
textlayer2.truncationMode = .end
textlayer2.alignmentMode = .center
textlayer2.foregroundColor = UIColor.white.cgColor

layer.addSublayer(textlayer2)
