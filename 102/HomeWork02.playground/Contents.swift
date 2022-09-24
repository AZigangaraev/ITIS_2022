import UIKit
import PlaygroundSupport

let size1 = CGSize(width: 265, height: 50)

let view = UIView()
view.backgroundColor = .white
view.frame = CGRect(origin: .zero, size: CGSize(width: 300, height: 600))
PlaygroundPage.current.liveView = view
let layer = view.layer


let gradientLayer = CAGradientLayer()
gradientLayer.startPoint = .zero
gradientLayer.endPoint = CGPoint(x: 1, y: 1)
gradientLayer.colors = [
    UIColor.white.cgColor.copy(alpha: 0.7) as Any,
    UIColor.blue.cgColor.copy(alpha: 0.7) as Any,
    UIColor.red.cgColor.copy(alpha: 0.7) as Any,
]
gradientLayer.frame = layer.bounds
layer.addSublayer(gradientLayer)

let squareLayer = CATextLayer()
squareLayer.frame = CGRect(origin: CGPoint(x: 15, y: 20), size: size1)
squareLayer.alignmentMode = .center
squareLayer.fontSize = 35
squareLayer.cornerRadius = 10
squareLayer.string = "С днем России!"
squareLayer.backgroundColor = UIColor(red: 238/255, green: 65/255, blue: 65/255, alpha: 1).cgColor
gradientLayer.addSublayer(squareLayer)



let stickLayer = CALayer()
stickLayer.backgroundColor = UIColor(red: 64/255, green: 64/255, blue: 64/255, alpha: 1).cgColor
stickLayer.frame = CGRect(
    origin: CGPoint(x: 150, y: 125),
    size: CGSize(width: 5, height: 150))
gradientLayer.addSublayer(stickLayer)

let whiteFlagLayer = CALayer()
whiteFlagLayer.backgroundColor = UIColor.white.cgColor
whiteFlagLayer.frame = CGRect(
    origin: CGPoint(x: 155, y: 125),
    size: CGSize(width: 100, height: 25))
gradientLayer.addSublayer(whiteFlagLayer)

let blueFlagLayer = CALayer()
blueFlagLayer.backgroundColor = UIColor.blue.cgColor
blueFlagLayer.frame = CGRect(
    origin: CGPoint(x: 155, y: 150),
    size: CGSize(width: 100, height: 25))
gradientLayer.addSublayer(blueFlagLayer)

let redFlagLayer = CALayer()
redFlagLayer.backgroundColor = UIColor.red.cgColor
redFlagLayer.frame = CGRect(
    origin: CGPoint(x: 155, y: 175),
    size: CGSize(width: 100, height: 25))
gradientLayer.addSublayer(redFlagLayer)

let headLayer = CALayer()
headLayer.backgroundColor = UIColor(red: 255/255, green: 204/255, blue: 153/255, alpha: 1).cgColor
headLayer.frame = CGRect(
    origin: CGPoint(x: 60, y: 250),
    size: CGSize(width: 80, height: 80))
headLayer.cornerRadius = 40
gradientLayer.addSublayer(headLayer)

let bodyLayer = CALayer()
bodyLayer.backgroundColor = UIColor.gray.cgColor
bodyLayer.frame = CGRect(
    origin: CGPoint(x: 61, y: 327),
    size: CGSize(width: 80, height: 160))
bodyLayer.cornerRadius = 20
gradientLayer.addSublayer(bodyLayer)

let leftArmLayer = CALayer()
leftArmLayer.backgroundColor = UIColor.gray.cgColor
leftArmLayer.frame = CGRect(
    origin: CGPoint(x: 140, y: 260),
    size: CGSize(width: 25, height: 100))
leftArmLayer.cornerRadius = 10
gradientLayer.addSublayer(leftArmLayer)

let rightArmLayer = CALayer()
rightArmLayer.backgroundColor = UIColor.gray.cgColor
rightArmLayer.frame = CGRect(
    origin: CGPoint(x: 37, y: 340),
    size: CGSize(width: 25, height: 100))
rightArmLayer.cornerRadius = 10
gradientLayer.addSublayer(rightArmLayer)

let leftWristLayer = CALayer()
leftWristLayer.backgroundColor = UIColor(red: 255/255, green: 204/255, blue: 153/255, alpha: 1).cgColor
leftWristLayer.frame = CGRect(
    origin: CGPoint(x: 139, y: 260),
    size: CGSize(width: 26, height: 26))
leftWristLayer.cornerRadius = 12
gradientLayer.addSublayer(leftWristLayer)

let rightWristLayer = CALayer()
rightWristLayer.backgroundColor = UIColor(red: 255/255, green: 204/255, blue: 153/255, alpha: 1).cgColor
rightWristLayer.frame = CGRect(
    origin: CGPoint(x: 36, y: 415),
    size: CGSize(width: 26, height: 26))
rightWristLayer.cornerRadius = 12
gradientLayer.addSublayer(rightWristLayer)

let leftLegLayer = CALayer()
leftLegLayer.backgroundColor = UIColor.gray.cgColor
leftLegLayer.frame = CGRect(
    origin: CGPoint(x: 68, y: 475),
    size: CGSize(width: 30, height: 110))
leftLegLayer.cornerRadius = 15
gradientLayer.addSublayer(leftLegLayer)

let rightLegLayer = CALayer()
rightLegLayer.backgroundColor = UIColor.gray.cgColor
rightLegLayer.frame = CGRect(
    origin: CGPoint(x: 102, y: 475),
    size: CGSize(width: 30, height: 110))
rightLegLayer.cornerRadius = 15
gradientLayer.addSublayer(rightLegLayer)

let tshirtLayer = CALayer()
tshirtLayer.backgroundColor = UIColor.white.cgColor
tshirtLayer.frame = CGRect(
    origin: CGPoint(x: 88, y: 327),
    size: CGSize(width: 25, height: 160))
gradientLayer.addSublayer(tshirtLayer)

let leftBoot = CALayer()
leftBoot.backgroundColor = UIColor(red: 105/255, green: 100/255, blue: 98/255, alpha: 1).cgColor
leftBoot.frame = CGRect(
    origin: CGPoint(x: 68, y: 565),
    size: CGSize(width: 30, height: 25))
leftBoot.cornerRadius = 10
gradientLayer.addSublayer(leftBoot)

let rightBoot = CALayer()
rightBoot.backgroundColor = UIColor(red: 105/255, green: 100/255, blue: 98/255, alpha: 1).cgColor
rightBoot.frame = CGRect(
    origin: CGPoint(x: 103, y: 565),
    size: CGSize(width: 30, height: 25))
rightBoot.cornerRadius = 10
gradientLayer.addSublayer(rightBoot)

let leftEyeLayer1 = CALayer()
leftEyeLayer1.backgroundColor = UIColor.black.cgColor
leftEyeLayer1.frame = CGRect(
    origin: CGPoint(x: 105, y: 270),
    size: CGSize(width: 23, height: 23))
leftEyeLayer1.cornerRadius = 12
gradientLayer.addSublayer(leftEyeLayer1)

let rightEyeLayer1 = CALayer()
rightEyeLayer1.backgroundColor = UIColor.black.cgColor
rightEyeLayer1.frame = CGRect(
    origin: CGPoint(x: 75, y: 270),
    size: CGSize(width: 23, height: 23))
rightEyeLayer1.cornerRadius = 12
gradientLayer.addSublayer(rightEyeLayer1)

let leftEyeLayer2 = CALayer()
leftEyeLayer2.backgroundColor = UIColor.white.cgColor
leftEyeLayer2.frame = CGRect(
    origin: CGPoint(x: 107, y: 272),
    size: CGSize(width: 18, height: 18))
leftEyeLayer2.cornerRadius = 9
gradientLayer.addSublayer(leftEyeLayer2)

let rightEyeLayer2 = CALayer()
rightEyeLayer2.backgroundColor = UIColor.white.cgColor
rightEyeLayer2.frame = CGRect(
    origin: CGPoint(x: 78, y: 272),
    size: CGSize(width: 18, height: 18))
rightEyeLayer2.cornerRadius = 9
gradientLayer.addSublayer(rightEyeLayer2)

let leftEyeLayer3 = CALayer()
leftEyeLayer3.backgroundColor = UIColor.brown.cgColor
leftEyeLayer3.frame = CGRect(
    origin: CGPoint(x: 113, y: 272),
    size: CGSize(width: 10, height: 10))
leftEyeLayer3.cornerRadius = 5
gradientLayer.addSublayer(leftEyeLayer3)

let rightEyeLayer3 = CALayer()
rightEyeLayer3.backgroundColor = UIColor.brown.cgColor
rightEyeLayer3.frame = CGRect(
    origin: CGPoint(x: 84, y: 272),
    size: CGSize(width: 10, height: 10))
rightEyeLayer3.cornerRadius = 5
gradientLayer.addSublayer(rightEyeLayer3)

let mouthLayer = CALayer()
mouthLayer.backgroundColor = UIColor.black.cgColor
mouthLayer.frame = CGRect(
    origin: CGPoint(x: 85, y: 310),
    size: CGSize(width: 30, height: 2))
gradientLayer.addSublayer(mouthLayer)

