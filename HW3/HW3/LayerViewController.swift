//
//  ViewController.swift
//  Animations
//
//  Created by Тимур Хайруллин on 30.09.2022.
//

import UIKit

class LayerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        NotificationCenter.default.addObserver(self, selector: #selector(reanimate), name: UIApplication.willEnterForegroundNotification, object: nil)
    }
    
    @objc func reanimate() {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        createLayerAndAnimate(animated)
    }
    
    private func createLayerAndAnimate(_ animated: Bool) {
        let layer = CALayer()
        layer.frame = CGRect(x: 50, y: 50, width: 100, height: 100)
        view.layer.addSublayer(layer)
        
        layer.backgroundColor = UIColor.green.cgColor
        let colorAnimation = CABasicAnimation(keyPath: "backgroundColor")
        colorAnimation.fromValue = layer.backgroundColor
        colorAnimation.toValue = UIColor.red.cgColor
        colorAnimation.duration = 3
        colorAnimation.repeatCount = 3
        colorAnimation.autoreverses = true  // плавно возвращает анимацию обратно
        let colorKey = "background color animated"
        layer.add(colorAnimation, forKey: colorKey)
        
        let positionAnimation = CASpringAnimation(keyPath: "position.x")
        positionAnimation.fromValue = CGFloat(50)
        positionAnimation.toValue = CGFloat(75)
        positionAnimation.duration = 0
        positionAnimation.repeatCount = .infinity
        positionAnimation.autoreverses = true
        let positionkey = "x animation"
        layer.add(positionAnimation, forKey: positionkey)
        
    }
}

