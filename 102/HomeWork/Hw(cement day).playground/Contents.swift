//Нарисовать открытку в Playgound, поздравить можно кого угодно, с чем угодно, главное использовать:
//
//CALayer
//CATextLayer
//CAGradientLayer

import UIKit
import PlaygroundSupport
import Darwin

PlaygroundPage.current.needsIndefiniteExecution = true

let size100 = CGSize(width: 100, height: 100)
let view = UIView()
view.backgroundColor = .blue
view.frame = CGRect(origin: .zero, size: CGSize(width: 600, height: 400))
PlaygroundPage.current.liveView = view

let layer = view.layer

let bodyLayer = CALayer()
bodyLayer.frame = CGRect(
    origin: CGPoint(x: 50, y: 250),
    size: CGSize(width: 200, height: 100)
)
bodyLayer.backgroundColor = UIColor.brown.cgColor
layer.addSublayer(bodyLayer)

let headLayer = CALayer()
headLayer.frame = CGRect(
    origin: CGPoint(x: 200, y: 180),
    size: CGSize(width: 100, height: 100)
)
headLayer.backgroundColor = UIColor.brown.cgColor
layer.addSublayer(headLayer)

let eyeLayer = CALayer()
eyeLayer.backgroundColor = UIColor.black.cgColor
eyeLayer.frame = CGRect(
    origin: CGPoint(x: 250, y: 200),
    size: CGSize(width: 20, height: 20)
)
eyeLayer.cornerRadius = 20
layer.addSublayer(eyeLayer)

let weyeLayer = CALayer()
weyeLayer.backgroundColor = UIColor.white.cgColor
weyeLayer.frame = CGRect(
    origin: CGPoint(x: 255, y: 205),
    size: CGSize(width: 10, height: 10)
)
weyeLayer.cornerRadius = 10
layer.addSublayer(weyeLayer)

let flegLayer = CALayer()
flegLayer.frame = CGRect(
    origin: CGPoint(x: 75, y: 350),
    size: CGSize(width: 20, height: 70)
)
flegLayer.backgroundColor = UIColor.brown.cgColor
layer.addSublayer(flegLayer)

let slegLayer = CALayer()
slegLayer.frame = CGRect(
    origin: CGPoint(x: 120, y: 350),
    size: CGSize(width: 20, height: 70)
)
slegLayer.backgroundColor = UIColor.brown.cgColor
layer.addSublayer(slegLayer)

let tlegLayer = CALayer()
tlegLayer.frame = CGRect(
    origin: CGPoint(x: 165, y: 350),
    size: CGSize(width: 20, height: 70)
)
tlegLayer.backgroundColor = UIColor.brown.cgColor
layer.addSublayer(tlegLayer)

let llegLayer = CALayer()
llegLayer.frame = CGRect(
    origin: CGPoint(x: 205, y: 350),
    size: CGSize(width: 20, height: 70)
)
llegLayer.backgroundColor = UIColor.brown.cgColor
layer.addSublayer(llegLayer)


let noseLayer = CALayer()
noseLayer.frame = CGRect(
    origin: CGPoint(x: 285, y: 170),
    size: CGSize(width: 30, height: 30)
)
noseLayer.cornerRadius = 15
noseLayer.backgroundColor = UIColor.red.cgColor
layer.addSublayer(noseLayer)

let earLayer = CALayer()
earLayer.frame = CGRect(
    origin: CGPoint(x: 200, y: 150),
    size: CGSize(width: 20, height: 40)
)
earLayer.backgroundColor = UIColor.black.cgColor
layer.addSublayer(earLayer)

let tailLayer = CALayer()
tailLayer.frame = CGRect(
    origin: CGPoint(x: 50, y: 180),
    size: CGSize(width: 20, height: 70)
)
tailLayer.backgroundColor = UIColor.black.cgColor
layer.addSublayer(tailLayer)

let backetLayer = CALayer()
backetLayer.frame = CGRect(
    origin: CGPoint(x: 450, y: 250),
    size: size100
)
backetLayer.backgroundColor = UIColor.black.cgColor
layer.addSublayer(backetLayer)

let fpieceLayer = CALayer()
fpieceLayer.frame = CGRect(
    origin: CGPoint(x: 450, y: 230),
    size: CGSize(width: 20, height: 20)
)
fpieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(fpieceLayer)

let spieceLayer = CALayer()
spieceLayer.frame = CGRect(
    origin: CGPoint(x: 470, y: 230),
    size: CGSize(width: 20, height: 20)
)
spieceLayer.cornerRadius = 10
spieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(spieceLayer)

let tpieceLayer = CALayer()
tpieceLayer.frame = CGRect(
    origin: CGPoint(x: 490, y: 230),
    size: CGSize(width: 20, height: 20)
)
tpieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(tpieceLayer)

let fopieceLayer = CALayer()
fopieceLayer.frame = CGRect(
    origin: CGPoint(x: 510, y: 230),
    size: CGSize(width: 20, height: 20)
)
fopieceLayer.cornerRadius = 10
fopieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(fopieceLayer)

let fipieceLayer = CALayer()
fipieceLayer.frame = CGRect(
    origin: CGPoint(x: 530, y: 230),
    size: CGSize(width: 20, height: 20)
)
fipieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(fipieceLayer)

let sixpieceLayer = CALayer()
sixpieceLayer.frame = CGRect(
    origin: CGPoint(x: 460, y: 210),
    size: CGSize(width: 20, height: 20)
)
sixpieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(sixpieceLayer)

let sevenpieceLayer = CALayer()
sevenpieceLayer.frame = CGRect(
    origin: CGPoint(x: 480, y: 210),
    size: CGSize(width: 20, height: 20)
)
sevenpieceLayer.cornerRadius = 10
sevenpieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(sevenpieceLayer)

let eightpieceLayer = CALayer()
eightpieceLayer.frame = CGRect(
    origin: CGPoint(x: 500, y: 210),
    size: CGSize(width: 20, height: 20)
)
eightpieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(eightpieceLayer)

let ninepieceLayer = CALayer()
ninepieceLayer.frame = CGRect(
    origin: CGPoint(x: 520, y: 210),
    size: CGSize(width: 20, height: 20)
)
ninepieceLayer.cornerRadius = 10
ninepieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(ninepieceLayer)

let tenpieceLayer = CALayer()
tenpieceLayer.frame = CGRect(
    origin: CGPoint(x: 470, y: 190),
    size: CGSize(width: 20, height: 20)
)
tenpieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(tenpieceLayer)

let elpieceLayer = CALayer()
elpieceLayer.frame = CGRect(
    origin: CGPoint(x: 490, y: 190),
    size: CGSize(width: 20, height: 20)
)
elpieceLayer.cornerRadius = 10
elpieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(elpieceLayer)

let twpieceLayer = CALayer()
twpieceLayer.frame = CGRect(
    origin: CGPoint(x: 510, y: 190),
    size: CGSize(width: 20, height: 20)
)
twpieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(twpieceLayer)

let thirteenpieceLayer = CALayer()
thirteenpieceLayer.frame = CGRect(
    origin: CGPoint(x: 480, y: 170),
    size: CGSize(width: 20, height: 20)
)
thirteenpieceLayer.backgroundColor = UIColor.white.cgColor
layer.addSublayer(thirteenpieceLayer)

let fourpieceLayer = CALayer()
fourpieceLayer.frame = CGRect(
    origin: CGPoint(x: 500, y: 170),
    size: CGSize(width: 20, height: 20)
)
fourpieceLayer.backgroundColor = UIColor.white.cgColor
fourpieceLayer.cornerRadius = 10
layer.addSublayer(fourpieceLayer)

let lastpieceLayer = CALayer()
lastpieceLayer.frame = CGRect(
    origin: CGPoint(x: 490, y: 150),
    size: CGSize(width: 20, height: 20)
)
lastpieceLayer.backgroundColor = UIColor.white.cgColor
lastpieceLayer.cornerRadius = 10
layer.addSublayer(lastpieceLayer)

let textLayer = CATextLayer()
textLayer.frame = CGRect(
    origin: CGPoint(x: 150, y: 50),
    size: CGSize(width: 300, height: 100)
)
textLayer.string = "С днём цемента!"
textLayer.foregroundColor = UIColor.red.cgColor
layer.addSublayer(textLayer)
 

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
