//
//  ViewController.swift
//  Advertisement
//
//  Created by Илья Казначеев on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .link
        NotificationCenter.default.addObserver(self, selector: #selector(reanimate), name: UIApplication.willEnterForegroundNotification, object: nil)
        
    }
    
    
    @objc func reanimate(){
        animate()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        setup()
    }
    
    private var textLayer: CATextLayer = makeTextLayer()
    private let animatingView: UIImageView = UIImageView(image: UIImage(named: "Black_Up_Arrow.png"))
    
    private func setup() {
        view.layer.addSublayer(textLayer)
        view.addSubview(animatingView)
        animatingView.frame = CGRect(x: 162, y: 730, width: 65, height: 80)
        
        animate()
    }
    
    private static func makeTextLayer() -> CATextLayer {
        let layer = CATextLayer()
        layer.string = "❗️NEW TREND❗️\n👁BLINK2EARN👁"
        layer.frame = CGRect(x: 65, y: 325, width: 300, height: 80)
        layer.fontSize = 35
        layer.font = UIFont.boldSystemFont(ofSize: 60)
        layer.foregroundColor = UIColor.white.cgColor
        return layer
    }
    
    
    private func animate() {
        
        // 1 text animation by CABasicAnimation
        
        let colorAnimation = CABasicAnimation(keyPath: "foregroundColor")
        colorAnimation.fromValue = UIColor.black.cgColor
        colorAnimation.toValue = UIColor.white.cgColor
        colorAnimation.duration = 1
        colorAnimation.repeatCount = .infinity
        colorAnimation.autoreverses = true
        let colorKey = "foregroundColor animation"
        textLayer.add(colorAnimation, forKey: colorKey)
        
        // 2 arrow.up animation by UIView.animate
        
        UIView.animate(withDuration: 0.5, delay: 0,options: [ .repeat, .autoreverse, .curveEaseOut ]) { [self] in
            animatingView.frame.origin.y = 700
        }
        
        // 3 view.backgroundColor animation by UIView.animateKeyframes
        
        
        UIView.animateKeyframes(
            withDuration: 1, // 0
            delay: 0,
            options: [ .repeat, .autoreverse]
        ) { [self] in
            UIView.addKeyframe(
                withRelativeStartTime: 0, relativeDuration: 1
            ) { [self] in
                view.backgroundColor = .magenta
            }
            UIView.addKeyframe(
                withRelativeStartTime: 0.5, relativeDuration: 1
            ) { [self] in
                view.backgroundColor = .black
            }
            UIView.addKeyframe(
                withRelativeStartTime: 1, relativeDuration: 1
            ) { [self] in
                view.backgroundColor = .green
            }
            UIView.addKeyframe(
                withRelativeStartTime: 1.5, relativeDuration: 1
            ) { [self] in
                view.backgroundColor = .red
            }
        }
        
    }
    

}

