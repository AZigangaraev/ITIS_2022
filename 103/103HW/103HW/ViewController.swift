//
//  ViewController.swift
//  103HW
//
//  Created by Карина Хайрулина on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        view.backgroundColor = .systemGray3
        NotificationCenter.default.addObserver(self, selector: #selector(reanimate), name: UIApplication.willEnterForegroundNotification, object: nil)
        
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        square1Layer()
        square2Layer()
        animate()
    }
    @objc func reanimate() {
        animate()
     }
        
    
    private func square1Layer() {
        let square1 = CALayer()
        square1.frame = CGRect(origin: .init(x: 200, y: 225),
                              size: CGSize(width: 30, height: 30))
        view.layer.addSublayer(square1)

        square1.backgroundColor = UIColor.purple.cgColor
        let animation1 = CABasicAnimation(keyPath: "backgroundColor")
        animation1.fromValue = square1.backgroundColor
        animation1.toValue = UIColor.systemMint.cgColor
        animation1.duration = 1
        animation1.repeatCount = 20
        animation1.autoreverses = true
        let key = "background color animation"
        square1.add(animation1, forKey: key)

    }
    
    private func square2Layer() {
        let square2 = CALayer()
        square2.frame = CGRect(origin: .init(x: 300, y: 225),
                              size: CGSize(width: 30, height: 30))
        view.layer.addSublayer(square2)

        square2.backgroundColor = UIColor.systemMint.cgColor
        let animation = CABasicAnimation(keyPath: "backgroundColor")
        animation.fromValue = square2.backgroundColor
        animation.toValue = UIColor.red.cgColor
        animation.duration = 1
        animation.repeatCount = 20
        animation.autoreverses = true
        let key = "background color animation"
        square2.add(animation, forKey: key)

    }


    private var imageView: UIImageView = .init()
    private let animatingView: UIView = .init()
    private let label: UILabel = .init()
    private let label2: UILabel = .init()

    private func setup() {

        view.addSubview(label)
        label.text = "Toys World"
        label.font = .systemFont(ofSize: 70)
        label.sizeToFit()
        label.frame.origin = CGPoint(x: 50, y: 500)
        
        view.addSubview(label2)
        label2.text = "Best toys!"
        label2.font = .systemFont(ofSize: 75)
        label2.sizeToFit()
        label2.frame.origin = CGPoint(x: 50, y: 350)
        

        let imageView = UIImageView(frame: CGRect(x: 20, y: 150, width: 150, height: 150))
        imageView.image = UIImage(named: "Pacman-Transparent")
        self.view.addSubview(imageView)
        
    }

    private func animate() {
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [ .repeat, .autoreverse ]
        ) { [self] in
            label.frame.origin.x = 5
            label2.frame.origin.x = 5
        }
        UIView.animateKeyframes(
            withDuration: 5,
                    delay: 0,
                    options: [ .repeat, .autoreverse ]
                ) { [self] in
                    UIView.addKeyframe(
                        withRelativeStartTime: 0.25, relativeDuration: 0.25
                    ) { [self] in
                        label.backgroundColor = .systemMint
                        label2.backgroundColor = .systemBlue

                    }
                    UIView.addKeyframe(
                        withRelativeStartTime: 0.25, relativeDuration: 0.25
                    ) { [self] in
                        label.frame.origin.x = 5
                        label2.frame.origin.x = 5
                    }

                    }
        
        }
}

