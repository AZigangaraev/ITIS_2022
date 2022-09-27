//
//  ViewController.swift
//  Ad
//
//  Created by Максим Тарасов on 27.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
            super.viewDidLoad()

            setup()
            NotificationCenter.default.addObserver(
                self, selector: #selector(reanimate),
                name: UIApplication.willEnterForegroundNotification,
                object: nil
            )
        }

        @objc func reanimate() {
            animate()
        }

        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)

            animate()
        }
        
        private let banner: CALayer = .init()
        private let sun: UIView = .init()
        private let food: UIView = .init()
        private let imageView: UIImage = .init()
        private let label: UILabel = .init()

        private func setup() {
            view.backgroundColor = .red
            let imageView:UIImageView = UIImageView(frame: self.view.bounds)
            imageView.image = UIImage(named: "cat_PNG112")
            imageView.layer.frame = CGRect(x: 30, y: 550, width: 300, height: 300)
            
            self.view.addSubview(imageView)

            view.addSubview(label)
            label.text = "С 1 по 31 декабря"
            label.textColor = .white
            label.font = .systemFont(ofSize: 30)
            label.sizeToFit()
            label.frame.origin = CGPoint(x: 150, y: 100)
            
            banner.frame = CGRect(x: 150, y: 450, width: 100, height: 100)
            
            view.layer.addSublayer(banner)
            view.addSubview(food)
            view.addSubview(sun)
        }

        private func animate() {
            
            UIView.animate(
                withDuration: 0.3,
                delay: 0,
                options: [ .repeat, .autoreverse ]
            ) { [self] in
                label.frame.origin.x = 10
            }
            
            UIView.animateKeyframes(
                        withDuration: 5,
                        delay: 0,
                        options: [ .repeat, .autoreverse ]
                    ) { [self] in
                        UIView.addKeyframe(
                            withRelativeStartTime: 0, relativeDuration: 0.5
                        ) { [self] in
                            food.backgroundColor = .brown
                        }
                        UIView.addKeyframe(
                            withRelativeStartTime: 0.25, relativeDuration: 0.25
                        ) { [self] in
                            food.frame.origin.x = 350
                            food.frame.origin.y = 750
                        }
                        UIView.addKeyframe(
                            withRelativeStartTime: 0.5, relativeDuration: 0.25
                        ) { [self] in
                            food.frame.origin.x = 50
                            food.frame.origin.y = 200
                            food.frame.size = CGSize(width: 200, height: 200)
                        }
                        UIView.addKeyframe(
                            withRelativeStartTime: 0.75, relativeDuration: 0.25
                        ) { [self] in
                            food.frame.size = CGSize(width: 50, height: 50)
                        }
                    }
            
            UIView.animateKeyframes(
                        withDuration: 5,
                        delay: 0,
                        options: [ .repeat, .autoreverse ]
                    ) { [self] in
                        UIView.addKeyframe(
                            withRelativeStartTime: 0, relativeDuration: 0.5
                        ) { [self] in
                            sun.backgroundColor = .yellow
                        }
                        UIView.addKeyframe(
                            withRelativeStartTime: 0.25, relativeDuration: 0.25
                        ) { [self] in
                            sun.frame.origin.x = 50
                            sun.frame.origin.y = 200
                        }
                        UIView.addKeyframe(
                            withRelativeStartTime: 0.5, relativeDuration: 0.25
                        ) { [self] in
                            sun.frame.origin.x = 200
                            sun.frame.origin.y = 150
                            sun.frame.size = CGSize(width: 200, height: 200)
                            sun.layer.cornerRadius = 100
                        }
                        UIView.addKeyframe(
                            withRelativeStartTime: 0.75, relativeDuration: 0.25
                        ) { [self] in
                            sun.frame.size = CGSize(width: 150, height: 150)
                            sun.layer.cornerRadius = 75
                        }
                    }
            
            let basiAnnimation = CABasicAnimation(keyPath: "backgroundColor")
            basiAnnimation.fromValue = view.backgroundColor
            basiAnnimation.toValue = UIColor.green.cgColor
            basiAnnimation.duration = 3
            basiAnnimation.repeatCount = .infinity
            basiAnnimation.autoreverses = true
            let colorKey = "background color animation"
            banner.add(basiAnnimation, forKey: colorKey)
        }
            
    }

