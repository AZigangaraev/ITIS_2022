import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let view = UIView()
view.frame = CGRect(origin: .zero, size: CGSize(width: 600, height: 400))

PlaygroundPage.current.liveView = view

let layer = view.layer

let backLayer = CALayer()
backLayer.cornerRadius = 20
backLayer.backgroundColor = UIColor.systemYellow.cgColor
backLayer.frame = CGRect(origin: CGPoint(x: view.frame.width / 3, y: view.frame.height / 5), size: CGSize(width: 200, height: 200))
layer.addSublayer(backLayer)

let gradientLayer = CAGradientLayer()
gradientLayer.startPoint = .zero
gradientLayer.endPoint = CGPoint(x: 1, y: 1)
gradientLayer.colors = [
    UIColor.yellow.cgColor.copy(alpha: 0.5) as Any,
    UIColor.red.cgColor.copy(alpha: 0.5) as Any,
    UIColor.orange.cgColor.copy(alpha: 0.5) as Any
]
gradientLayer.frame = layer.bounds
layer.addSublayer(gradientLayer)

let ratLeftEarLayer = CALayer()
ratLeftEarLayer.cornerRadius = 50
ratLeftEarLayer.backgroundColor = UIColor.gray.cgColor
ratLeftEarLayer.frame = CGRect(origin: CGPoint(x: 210, y: 100), size: CGSize(width: 100, height: 100))
layer.addSublayer(ratLeftEarLayer)

let ratRightEarLayer = CALayer()
ratRightEarLayer.cornerRadius = 50
ratRightEarLayer.backgroundColor = UIColor.gray.cgColor
ratRightEarLayer.frame = CGRect(origin: CGPoint(x: 290, y: 100), size: CGSize(width: 100, height: 100))
layer.addSublayer(ratRightEarLayer)

let ratFaceLayer = CALayer()
ratFaceLayer.cornerRadius = 100
ratFaceLayer.backgroundColor = UIColor.systemGray.cgColor
ratFaceLayer.frame = CGRect(origin: CGPoint(x: 235, y: 130), size: CGSize(width: 130, height: 130))
ratFaceLayer.shadowOpacity = 0.5
layer.addSublayer(ratFaceLayer)

let ratLeftEyeLayer = CALayer()
ratLeftEyeLayer.cornerRadius = 10
ratLeftEyeLayer.backgroundColor = UIColor.white.cgColor
ratLeftEyeLayer.frame = CGRect(origin: CGPoint(x: 260, y: 170), size: CGSize(width: 20, height: 20))
layer.addSublayer(ratLeftEyeLayer)

let ratRightEyeLayer = CALayer()
ratRightEyeLayer.cornerRadius = 10
ratRightEyeLayer.backgroundColor = UIColor.white.cgColor
ratRightEyeLayer.frame = CGRect(origin: CGPoint(x: 320, y: 170), size: CGSize(width: 20, height: 20))
layer.addSublayer(ratRightEyeLayer)

let ratLeftEyeBlackLayer = CALayer()
ratLeftEyeBlackLayer.cornerRadius = 25
ratLeftEyeBlackLayer.backgroundColor = UIColor.black.cgColor
ratLeftEyeBlackLayer.frame = CGRect(origin: CGPoint(x: 320, y: 170), size: CGSize(width: 20, height: 20))
layer.addSublayer(ratLeftEyeBlackLayer)

let ratRightEyeBlackLayer = CALayer()
ratRightEyeBlackLayer.cornerRadius = 25
ratRightEyeBlackLayer.backgroundColor = UIColor.black.cgColor
ratRightEyeBlackLayer.frame = CGRect(origin: CGPoint(x: 260, y: 170), size: CGSize(width: 20, height: 20))
layer.addSublayer(ratRightEyeBlackLayer)

let ratNoseLayer = CALayer()
ratNoseLayer.cornerRadius = 10
ratNoseLayer.backgroundColor = UIColor.black.cgColor
ratNoseLayer.frame = CGRect(origin: CGPoint(x: 290, y: 240), size: CGSize(width: 20, height: 20))
ratNoseLayer.shadowOpacity = 0.3
layer.addSublayer(ratNoseLayer)

let happyTextLayer = CATextLayer()
happyTextLayer.string = "Happy rat day! Yoooo!!"
happyTextLayer.frame = CGRect(origin: CGPoint(x: layer.frame.width / 4.7, y: layer.frame.height / 1.4), size: CGSize(width: 400, height: 200))
happyTextLayer.foregroundColor = UIColor.tertiarySystemBackground.cgColor
layer.addSublayer(happyTextLayer)

let flowerPartOneLayer = CALayer()
flowerPartOneLayer.cornerRadius = 25
flowerPartOneLayer.backgroundColor = UIColor.red.cgColor
flowerPartOneLayer.frame = CGRect(origin: CGPoint(x: 20, y: 10), size: CGSize(width: 50, height: 50))
flowerPartOneLayer.borderColor = UIColor.black.cgColor
flowerPartOneLayer.borderWidth = 0.5
layer.addSublayer(flowerPartOneLayer)

let flowerPartTwoLayer = CALayer()
flowerPartTwoLayer.cornerRadius = 25
flowerPartTwoLayer.backgroundColor = UIColor.red.cgColor
flowerPartTwoLayer.frame = CGRect(origin: CGPoint(x: 60, y: 10), size: CGSize(width: 50, height: 50))
flowerPartTwoLayer.borderColor = UIColor.black.cgColor
flowerPartTwoLayer.borderWidth = 0.5
layer.addSublayer(flowerPartTwoLayer)

let flowerPartThreeLayer = CALayer()
flowerPartThreeLayer.cornerRadius = 25
flowerPartThreeLayer.backgroundColor = UIColor.red.cgColor
flowerPartThreeLayer.frame = CGRect(origin: CGPoint(x: 40, y: 40), size: CGSize(width: 50, height: 50))
flowerPartThreeLayer.borderColor = UIColor.black.cgColor
flowerPartThreeLayer.borderWidth = 0.5
layer.addSublayer(flowerPartThreeLayer)

let flowerPartCenterLayer = CALayer()
flowerPartCenterLayer.cornerRadius = 20
flowerPartCenterLayer.backgroundColor = UIColor.yellow.cgColor
flowerPartCenterLayer.frame = CGRect(origin: CGPoint(x: 45, y: 27), size: CGSize(width: 40, height: 40))
flowerPartCenterLayer.borderColor = UIColor.black.cgColor
flowerPartCenterLayer.borderWidth = 0.5
layer.addSublayer(flowerPartCenterLayer)
