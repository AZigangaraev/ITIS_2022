import UIKit
import PlaygroundSupport
import CoreGraphics

let view = UIView()
view.backgroundColor = UIColor(red: 0.19, green: 0.3, blue: 0.215, alpha: 1)
view.frame = CGRect(origin: .zero, size: CGSize(width: 500, height: 500))
PlaygroundPage.current.liveView = view

let layer = view.layer
let rectangleLayer = CALayer()
rectangleLayer.cornerRadius = 10
rectangleLayer.frame = CGRect(
    origin: CGPoint(x: 40, y: 40),
    size: CGSize(width: 420, height: 60))
rectangleLayer.backgroundColor = CGColor(
    red: 0.7, green: 0.77, blue: 0.71, alpha: 0.9)
layer.addSublayer(rectangleLayer)

let gradientLayer = CAGradientLayer()
//gradientLayer.startPoint = .zero
//gradientLayer.endPoint = CGPoint(x:1,y:1)
gradientLayer.colors = [
    UIColor(red: 0.19, green: 0.3, blue: 0.215, alpha: 1)
        .cgColor.copy(alpha: 0.5) as Any,
    UIColor(red: 0.384, green: 0.5, blue: 0.4, alpha: 1)
        .cgColor.copy(alpha: 0.5) as Any,
    UIColor(red: 0.5, green: 0.643, blue: 0.513, alpha: 1)
        .cgColor.copy(alpha: 0.5) as Any,
    UIColor(red: 0.7, green: 0.77, blue: 0.71, alpha: 0.5)
        .cgColor.copy(alpha: 0.5) as Any,
]
gradientLayer.frame = layer.bounds
layer.addSublayer(gradientLayer)

//огурец

let pickleColor = UIColor(red: 0.55, green: 0.62, blue: 0.37, alpha: 1)

func createPicklePart(x: Double, y: Double, width: Double, height: Double,
                      cornerRadius: Double, rotationAngle: CGFloat) -> UIView{
    let picklePart = UIView()
    picklePart.backgroundColor = UIColor(red: 0.55, green: 0.62, blue: 0.37, alpha: 1)
    picklePart.frame = CGRect(origin: CGPoint(x: x, y: y),
                          size: CGSize(width: width, height: height))
    picklePart.layer.cornerRadius = cornerRadius
    picklePart.transform = CGAffineTransform(rotationAngle: rotationAngle)
    view.addSubview(picklePart)
    return picklePart
}
let picklePart1 = createPicklePart(x: 362, y: 208, width: 91, height: 65,
                                   cornerRadius: 28, rotationAngle: .pi/2.3)
let picklePart2 = createPicklePart(x: 358, y: 318, width: 100, height: 65,
                                   cornerRadius: 25, rotationAngle: .pi/1.85)
let picklePart3 = createPicklePart(x: 379.75, y: 241, width: 64.6, height: 100,
                                   cornerRadius: 25, rotationAngle: .zero)
let picklePart4 = createPicklePart(x: 370, y: 356, width: 65, height: 65,
                                   cornerRadius: 30, rotationAngle: .pi/1.85)
let picklePart5 = createPicklePart(x: 371, y: 187, width: 65, height: 65,
                                   cornerRadius: 35, rotationAngle: .pi/2.3)

func pickleEye(x: Double) -> CALayer{
    let eye = CALayer()
    eye.frame = CGRect(
        origin: CGPoint(x: x, y: 210),
        size: CGSize(width: 18, height: 26))
    eye.backgroundColor = UIColor.white.cgColor
    eye.cornerRadius = 10
    layer.addSublayer(eye)
    return eye
}
let eye1 = pickleEye(x: 380)
let eye2 = pickleEye(x: 404)

func picklePupil(x: Double) -> CALayer{
    let pupil = CALayer()
    pupil.frame = CGRect(
        origin: CGPoint(x: x, y: 215),
        size: CGSize(width: 10, height: 15))
    pupil.backgroundColor = UIColor.black.cgColor
    pupil.cornerRadius = 5
    layer.addSublayer(pupil)
    return pupil
}
let pupil1 = picklePupil(x: 380)
let pupil2 = picklePupil(x: 404)

let pickleMouth = CALayer()
pickleMouth.frame = CGRect(
    origin: CGPoint(x: 390, y: 245),
    size: CGSize(width: 17, height: 5))
pickleMouth.backgroundColor = UIColor.black.cgColor
pickleMouth.cornerRadius = 3
layer.addSublayer(pickleMouth)

func pickleHand(x: Double, rotationAngle: CGFloat) -> UIView{
    let hand = UIView()
    hand.backgroundColor = .black
    hand.frame = CGRect(origin: CGPoint(x: x, y: 275),
                              size: CGSize(width: 3, height: 50))
    hand.layer.cornerRadius = 2
    hand.transform = CGAffineTransform(rotationAngle: rotationAngle)
    view.addSubview(hand)
    return hand
}
let hand1 = pickleHand(x: 370, rotationAngle: .pi/9)
let hand2 = pickleHand(x: 430, rotationAngle: .pi/1.1)
 
let text = CATextLayer()
text.string = "С днем соленого огурца!!"
text.foregroundColor = CGColor(red: 0.07, green: 0.22, blue: 0.07, alpha: 1)
text.frame = CGRect(origin: CGPoint(x: 60, y: 50),
                    size: CGSize(width: 420, height: 60))
text.font = UIFont(name:"HelveticaNeue-Bold", size: 1)
text.fontSize = 30
layer.addSublayer(text)

var ohNoCringe = """
Всех от лица человечества
изумленного
С днем рождения огурца
поздравляю соленого!
Повод выпить достойный
вполне, как мне кажется.
Не пойму, почему он в стране
государственным не является!
"""

let text2 = CATextLayer()
text2.string = ohNoCringe
text2.foregroundColor = UIColor.white.cgColor
text2.frame = CGRect(origin: CGPoint(x: 60, y: 220),
                     size: CGSize(width: 310, height: 240))
text2.fontSize = 15
text2.font = UIFont.italicSystemFont(ofSize: 15)
layer.addSublayer(text2)

func decoradion(y: Double) -> CATextLayer{
    let frame = "🥒🥒🥒🥒🥒🥒🥒🥒🥒🥒"
    let textDecoration = CATextLayer()
    textDecoration.string = frame
    textDecoration.frame = CGRect(x: 40, y: y, width: 350, height: 30)
    textDecoration.fontSize = 25
    layer.addSublayer(textDecoration)
    return textDecoration
}

let decor = decoradion(y: 170)
let decor2 = decoradion(y: 390)


//let hat = CATextLayer()
//hat.string = "🧢"
//hat.frame = CGRect(x: 355, y: 140, width: 80, height: 80)
//hat.fontSize = 75
//layer.addSublayer(hat)
