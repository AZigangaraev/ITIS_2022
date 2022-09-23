import UIKit
import PlaygroundSupport


// Создал сьюшку
let view = UIView()
// Поставил цвет вьюшке на фон
view.backgroundColor = .magenta
// Задал форму и размеры вьюшке
view.frame = CGRect(origin: .zero,
                    size: CGSize(width: 450, height: 600)
)

// Отобразил вьюшку
PlaygroundPage.current.liveView = view

let layer = view.layer

// Создал новый слой для надписи
let rectangleLayer = CALayer()
// Задал размеры, форму и расположение прямоугольнику
rectangleLayer.frame = CGRect(
    origin: CGPoint(x: 50, y: 50),
    size: CGSize(width: 350, height: 150)
)
// Задал цвет прямоугольнику для надписи
rectangleLayer.backgroundColor = UIColor.white.cgColor
// Добавил слой с формой для надписи на слой layer
layer.addSublayer(rectangleLayer)

// Создал слой с градиентом
let gradientLayer = CAGradientLayer()
// Задал начало и конец градиента
gradientLayer.startPoint = .zero
gradientLayer.endPoint = CGPoint(x: 1, y: 1)
// Задал цвета у градиента
gradientLayer.colors = [
    UIColor.yellow.cgColor.copy(alpha: 0.5) as Any,
    UIColor.purple.cgColor.copy(alpha: 0.5) as Any,
    UIColor.cyan.cgColor.copy(alpha: 0.5) as Any,
]
// Задал размеры градиента (ограничение по границам первого слоя)
gradientLayer.frame = layer.bounds
// Отобразил градиент
layer.addSublayer(gradientLayer)
//


let textLayer = CATextLayer()

textLayer.frame = CGRect(x: 60, y: 110, width: 330, height: 130)
textLayer.fontSize = 25
textLayer.alignmentMode = .center
textLayer.truncationMode = .middle
textLayer.string = "Happy Programmer Day!"
textLayer.isWrapped = true
textLayer.font = CGFont("Helvetica-Bold" as CFString)!
textLayer.foregroundColor = UIColor.white.cgColor
gradientLayer.addSublayer(textLayer)

let imageLayer = UIImage(named: "it-park.jpg")?.cgImage
let myImageLayer = CALayer()
myImageLayer.contentsGravity = CALayerContentsGravity.bottom
myImageLayer.isGeometryFlipped = true
myImageLayer.contents = imageLayer

gradientLayer.addSublayer(myImageLayer)

let circleLayer = CALayer()
circleLayer.backgroundColor = UIColor.white.cgColor
circleLayer.frame = CGRect(
    origin: .zero,
    size: CGSize(width: 70, height: 70)
)
circleLayer.cornerRadius = 50
layer.addSublayer(circleLayer)
circleLayer.frame.origin = CGPoint(
    x: view.center.x
        - circleLayer.frame.width * 2,
    y: view.center.y
        - circleLayer.frame.height * 0.5
)

let circleLayer2 = CALayer()
circleLayer2.backgroundColor = UIColor.white.cgColor
circleLayer2.frame = CGRect(
    origin: .zero,
    size: CGSize(width: 70, height: 70)
)
circleLayer2.cornerRadius = 50
layer.addSublayer(circleLayer2)
circleLayer2.frame.origin = CGPoint(
    x: view.center.x
    - circleLayer2.frame.width * (-1.1),
    y: view.center.y
        - circleLayer2.frame.height * 0.5
)

let circleLayer3 = CALayer()
circleLayer3.backgroundColor = UIColor.white.cgColor
circleLayer3.frame = CGRect(
    origin: .zero,
    size: CGSize(width: 70, height: 70)
)
circleLayer3.cornerRadius = 50
layer.addSublayer(circleLayer3)
circleLayer3.frame.origin = CGPoint(
    x: view.center.x
    - circleLayer3.frame.width * (-1.5),
    y: view.center.y
    - circleLayer3.frame.height * (-1.8)
)

let circleLayer4 = CALayer()
circleLayer4.backgroundColor = UIColor.white.cgColor
circleLayer4.frame = CGRect(
    origin: .zero,
    size: CGSize(width: 70, height: 70)
)
circleLayer4.cornerRadius = 50
layer.addSublayer(circleLayer4)
circleLayer4.frame.origin = CGPoint(
    x: view.center.x
    - circleLayer4.frame.width * (2.1),
    y: view.center.y
    - circleLayer4.frame.height * (-1.8)
)

let circleLayer5 = CALayer()
circleLayer5.backgroundColor = UIColor.white.cgColor
circleLayer5.frame = CGRect(
    origin: .zero,
    size: CGSize(width: 70, height: 70)
)
circleLayer5.cornerRadius = 50
layer.addSublayer(circleLayer5)
circleLayer5.frame.origin = CGPoint(
    x: view.center.x
    - circleLayer5.frame.width * (1),
    y: view.center.y
    - circleLayer5.frame.height * (-2.3)
)

let circleLayer6 = CALayer()
circleLayer6.backgroundColor = UIColor.white.cgColor
circleLayer6.frame = CGRect(
    origin: .zero,
    size: CGSize(width: 70, height: 70)
)
circleLayer6.cornerRadius = 50
layer.addSublayer(circleLayer6)
circleLayer6.frame.origin = CGPoint(
    x: view.center.x
    - circleLayer6.frame.width * (-0.4),
    y: view.center.y
    - circleLayer6.frame.height * (-2.3)
)

let circleLayer7 = CALayer()
circleLayer7.backgroundColor = UIColor.white.cgColor
circleLayer7.frame = CGRect(
    origin: .zero,
    size: CGSize(width: 70, height: 70)
)
circleLayer7.cornerRadius = 50
layer.addSublayer(circleLayer7)
circleLayer7.frame.origin = CGPoint(
    x: view.center.x
    - circleLayer7.frame.width * (-1),
    y: view.center.y
    - circleLayer7.frame.height * (-2.3)
)

let circleLayer8 = CALayer()
circleLayer8.backgroundColor = UIColor.white.cgColor
circleLayer8.frame = CGRect(
    origin: .zero,
    size: CGSize(width: 70, height: 70)
)
circleLayer8.cornerRadius = 50
layer.addSublayer(circleLayer8)
circleLayer8.frame.origin = CGPoint(
    x: view.center.x
    - circleLayer8.frame.width * (1.5),
    y: view.center.y
    - circleLayer8.frame.height * (-2.3)
)

let circleLayer9 = CALayer()
circleLayer9.backgroundColor = UIColor.white.cgColor
circleLayer9.frame = CGRect(
    origin: .zero,
    size: CGSize(width: 70, height: 70)
)
circleLayer9.cornerRadius = 50
layer.addSublayer(circleLayer9)
circleLayer9.frame.origin = CGPoint(
    x: view.center.x
    - circleLayer9.frame.width * (0.3),
    y: view.center.y
    - circleLayer9.frame.height * (-2.5)
)

let circleLayer10 = CALayer()
circleLayer10.backgroundColor = UIColor.white.cgColor
circleLayer10.frame = CGRect(
    origin: .zero,
    size: CGSize(width: 50, height: 50)
)
circleLayer10.cornerRadius = 60
layer.addSublayer(circleLayer10)
circleLayer10.frame.origin = CGPoint(
    x: view.center.x
    - circleLayer10.frame.width * (0.3),
    y: view.center.y
    - circleLayer10.frame.height * (-1.4)
)
