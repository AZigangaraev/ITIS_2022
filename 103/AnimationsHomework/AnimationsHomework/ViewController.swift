//
//  ViewController.swift
//  AnimationsHomework
//
//  Created by Данил Терлецкий on 03.10.2022.
//

import UIKit

class ViewController: UIViewController {
    let imageView = UIImageView()
    let textLabel = UILabel()
    let textLabel2 = UILabel()
    let textLabel3 = UILabel()
    let frameForImage = CALayer()
    
    var loadedImages = [
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        NotificationCenter.default.addObserver(
            self, selector: #selector(reanimate),
            name: UIApplication.willEnterForegroundNotification,
            object: nil)
    }
    
    @objc func reanimate() {
        animate()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    private func setup() {
        view.backgroundColor = .magenta

        view.addSubview(textLabel)
        view.addSubview(textLabel2)
        view.addSubview(textLabel3)
        
        textLabel.text = "ЭЙНШТЕЙН =)"
        textLabel.textColor = UIColor.yellow
        textLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 45)
        textLabel.sizeToFit()
        textLabel.frame.origin = CGPoint(x: 40, y: 520)
        textLabel.textAlignment = .center
        
        textLabel2.text = "ЭЙНШТЕЙН =)"
        textLabel2.textColor = UIColor.white
        textLabel2.font = UIFont(name: "HelveticaNeue-Bold", size: 45)
        textLabel2.sizeToFit()
        textLabel2.frame.origin = CGPoint(x: 40, y: 590)
        textLabel2.textAlignment = .center
        
        textLabel3.text = "ЭЙНШТЕЙН =)"
        textLabel3.textColor = UIColor.red
        textLabel3.font = UIFont(name: "HelveticaNeue-Bold", size: 45)
        textLabel3.sizeToFit()
        textLabel3.frame.origin = CGPoint(x: 40, y: 660)
        textLabel3.textAlignment = .center
        
        frameForImage.frame = CGRect(x: 50, y: 90, width: 300, height: 400)
        view.layer.addSublayer(frameForImage)
        frameForImage.backgroundColor = UIColor.blue.cgColor
        
        imageView.frame = .init(x: 65, y: 105, width: 270, height: 370)
        
        view.addSubview(imageView)
        
    }
    
    private func animate() {
        let blinkingAnimation = CABasicAnimation(keyPath: "backgroundColor")
        blinkingAnimation.fromValue = frameForImage.backgroundColor
        blinkingAnimation.toValue = UIColor.green.cgColor
        blinkingAnimation.repeatCount = .infinity
        blinkingAnimation.duration = 0.5
        blinkingAnimation.autoreverses = true
        let blinkingKey = "blinking animation for layer under image"
        frameForImage.add(blinkingAnimation, forKey: blinkingKey)
        
        let frameSpringAnimation = CASpringAnimation(keyPath: "position.y")
        frameSpringAnimation.fromValue = CGFloat(300)
        frameSpringAnimation.toValue = CGFloat(270)
        frameSpringAnimation.duration = 0.5
        frameSpringAnimation.repeatCount = .infinity
        frameSpringAnimation.autoreverses = true
        let frameSpringKey = "frame layer y animation"
        frameForImage.add(frameSpringAnimation, forKey: frameSpringKey)
        
        imageView.animationImages = loadedImages
        imageView.animationDuration = 3
        imageView.animationRepeatCount = 0
        imageView.startAnimating()

        
        UIView.animateKeyframes(
            withDuration: 3,
            delay: 0,
            options: [ .repeat, .autoreverse ]
           ) { [ textLabel, textLabel2, textLabel3 ] in
                UIView.addKeyframe(
                    withRelativeStartTime: 0,
                    relativeDuration: 0.5
                ) {
                    textLabel.frame.origin = CGPoint(x: 40, y: 680)
                }

                UIView.addKeyframe(
                    withRelativeStartTime: 0.1,
                    relativeDuration: 0.3
                ) {
                    textLabel2.frame.origin = CGPoint(x: 40, y: 540)
                    textLabel2.textAlignment = .left
                }

                UIView.addKeyframe(
                    withRelativeStartTime: 0.2,
                    relativeDuration: 0.3
                ) {
                    textLabel3.frame.origin = CGPoint(x: 40, y: 610)
                }
        }
    }
}

