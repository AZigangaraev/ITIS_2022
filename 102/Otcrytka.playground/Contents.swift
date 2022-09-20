import UIKit
import PlaygroundSupport

let size100 = CGSize(
    width: 100,
    height: 100
)

let view = UIView()

view.backgroundColor = .magenta
view.frame = CGRect(
    origin: .zero,
    size: CGSize(
                width: 400,
                height: 400)
            )

PlaygroundPage.current.liveView = view

let layer = view.layer
let squareLayer = CALayer()

squareLayer.frame = CGRect(
    origin: CGPoint(x: 20, y: 20),
    size: size100
)

squareLayer.backgroundColor = UIColor.red.cgColor
// layer.addSublayer(squareLayer)

let circleLayer = CALayer()
circleLayer.backgroundColor = UIColor.lightGray.cgColor
circleLayer.frame = CGRect(
    origin: .zero, size: size100
)

circleLayer.cornerRadius = 50
// layer.addSublayer(circleLayer)

circleLayer.frame.origin = CGPoint(
    x: view.center.x
        - circleLayer.frame.width * 0.5,
    y: view.center.y
        - circleLayer.frame.height * 0.5
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



func makeTextLayerWhite1() -> CATextLayer {
    let layer = CATextLayer()
    layer.string = "С днем рождения"
    layer.frame = CGRect(x: 55, y: 20, width: 300, height: 80)
    layer.fontSize = 35
    layer.font = UIFont.boldSystemFont(ofSize: 60)
    layer.foregroundColor = UIColor.white.cgColor
    return layer
}

func makeTextLayerWhite2() -> CATextLayer {
    let layer = CATextLayer()
    layer.string = "Елена"
    layer.frame = CGRect(x: 150, y: 340, width: 400, height: 80)
    layer.fontSize = 35
    layer.font = UIFont.boldSystemFont(ofSize: 60)
    layer.foregroundColor = UIColor.white.cgColor
    return layer
}

let textLayerWhite1 =  makeTextLayerWhite1()
let textLayerWhite2 =  makeTextLayerWhite2()

layer.addSublayer(textLayerWhite1)
layer.addSublayer(textLayerWhite2)


let myLayerImage = CALayer()
let myImage = UIImage(named: "free-png.ru-374.png")?.cgImage
myLayerImage.frame = CGRect(x: 50, y: 50, width: 300, height: 300)
myLayerImage.contents = myImage
layer.addSublayer(myLayerImage)
