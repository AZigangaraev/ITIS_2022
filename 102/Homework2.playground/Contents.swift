import UIKit
import PlaygroundSupport

let size100 = CGSize(width: 100, height: 100) // CGSize - структура, содержащая значения ширины и высоты.

// 1. фон:
let view = UIView()
view.backgroundColor = .lightGray
view.frame = CGRect(origin: .zero, size: CGSize(width: 300, height: 600))
PlaygroundPage.current.liveView = view
let layer = view.layer

// 2. тетрис:
let squareLayer1 = CALayer()
squareLayer1.frame = CGRect(
    origin: CGPoint(x: 80, y: 310),
    size: CGSize(width: 30, height: 30)
)
squareLayer1.backgroundColor = UIColor.blue.cgColor
layer.addSublayer(squareLayer1)

let squareLayer2 = CALayer()
squareLayer2.frame = CGRect(
    origin: CGPoint(x: 110, y: 280),
    size: CGSize(width: 30, height: 30)
)
squareLayer2.backgroundColor = UIColor.blue.cgColor
layer.addSublayer(squareLayer2)

let squareLayer3 = CALayer()
squareLayer3.frame = CGRect(
    origin: CGPoint(x: 80, y: 250),
    size: CGSize(width: 30, height: 30)
)
squareLayer3.backgroundColor = UIColor.blue.cgColor
layer.addSublayer(squareLayer3)

let squareLayer4 = CALayer()
squareLayer4.frame = CGRect(
    origin: CGPoint(x: 60, y: 200),
    size: CGSize(width: 50, height: 32)
)
squareLayer4.backgroundColor = UIColor.cyan.cgColor
layer.addSublayer(squareLayer4)

let gold = UIColor(red: 107, green: 142/255, blue: 0, alpha: 1)

let squareLayer5 = CALayer()
squareLayer5.frame = CGRect(
    origin: CGPoint(x: 0, y: 300),
    size: CGSize(width: 60, height: 35)
)
squareLayer5.backgroundColor = gold.cgColor
layer.addSublayer(squareLayer5)

let squareLayer6 = CALayer()
squareLayer6.frame = CGRect(
    origin: CGPoint(x: 0, y: 270),
    size: CGSize(width: 30, height: 35)
)
squareLayer6.backgroundColor = gold.cgColor
layer.addSublayer(squareLayer6)

let squareLayer7 = CALayer()
squareLayer7.frame = CGRect(
    origin: CGPoint(x: 70, y: 360),
    size: CGSize(width: 80, height: 40)
)
squareLayer7.backgroundColor = gold.cgColor
layer.addSublayer(squareLayer7)

let squareLayer8 = CALayer()
squareLayer8.frame = CGRect(
    origin: CGPoint(x: 70, y: 400),
    size: CGSize(width: 40, height: 40)
)
squareLayer8.backgroundColor = gold.cgColor
layer.addSublayer(squareLayer8)

let squareLayer9 = CALayer()
squareLayer9.frame = CGRect(
    origin: CGPoint(x: 70, y: 440),
    size: CGSize(width: 80, height: 40)
)
squareLayer9.backgroundColor = gold.cgColor
layer.addSublayer(squareLayer9)

let squareLayer10 = CALayer()
squareLayer10.frame = CGRect(
    origin: CGPoint(x: 230, y: 410),
    size: CGSize(width: 30, height: 30)
)
squareLayer10.backgroundColor = UIColor.blue.cgColor
layer.addSublayer(squareLayer10)

let gradientLayer = CAGradientLayer()
gradientLayer.startPoint = .zero
gradientLayer.endPoint = CGPoint(x: 1, y: 1)
gradientLayer.colors = [
    UIColor.orange.cgColor.copy(alpha: 0.2) as Any,
    UIColor.red.cgColor.copy(alpha: 0.3) as Any,
    UIColor.purple.cgColor.copy(alpha: 0.2) as Any,
    UIColor.orange.cgColor.copy(alpha: 0.3) as Any,
]
gradientLayer.frame = layer.bounds
layer.addSublayer(gradientLayer)


let header = CATextLayer()

header.frame = CGRect(x: 50, y: 70, width: 200, height: 100)
header.font = CGFont("HelveticaNeue-Bold" as CFString)!
header.fontSize = 18
header.alignmentMode = .center // по горизонтали центрально
header.string = "С днем незапланированных безумств! ; )"
header.isWrapped = true
header.truncationMode = .end
header.foregroundColor = UIColor.black.cgColor

layer.addSublayer(header)


