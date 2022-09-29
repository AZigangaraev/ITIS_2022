//
//  MarketingBannerViewController.swift
//  Homework_3_BabichSergey
//
//  Created by Сергей Бабич on 27.09.2022.
//

import UIKit
import AVFoundation

// ДЕЛАЛ ПОД IPHONE 14 PRO

class MarketingBannerViewController: UIViewController {
    
    private let animatingView: UIView = .init()
    private let trollAnimatingView: UIView = .init()
    private let trollAnimatingViewLabel: UILabel = .init()
    private let animatingViewLabel: UILabel = .init()
    private let imageView: UIImageView = .init(image: UIImage(named: "ashot"))
    private let trollButton: UIButton = .init(frame: CGRect(x: 102, y: 650, width: 200, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animate()
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(reanimate),
            name: UIApplication.willEnterForegroundNotification,
            object: nil
        )
    }
    
    @objc func reanimate() {
        animate()
    }
    
    private func setup() {
        view.addSubview(animatingView)
        view.backgroundColor = .green
        
        animatingView.frame = CGRect(x: 50, y: 50, width: 300, height: 300)
        animatingView.backgroundColor = .gray
        animatingView.addSubview(animatingViewLabel)
        
        view.addSubview(trollAnimatingView)
        trollAnimatingView.frame = CGRect(origin: CGPoint(x: 450, y: 750), size: CGSize(width: 400, height: 60))
        trollAnimatingView.backgroundColor = .red
        trollAnimatingView.addSubview(trollAnimatingViewLabel)
        trollAnimatingViewLabel.frame = CGRect(origin: .zero, size: CGSize(width: 400, height: 40))
        trollAnimatingViewLabel.textAlignment = .center
        trollAnimatingViewLabel.text = "Думаю бесит достаточно 😸"
        trollAnimatingViewLabel.font = .systemFont(ofSize: 30)
        
        
        animatingViewLabel.frame = CGRect(origin: .zero, size: CGSize(width: 300, height: 40))
        animatingViewLabel.textAlignment = .center
        animatingViewLabel.text = "Купи арбуз!"
        animatingViewLabel.font = .systemFont(ofSize: 40)
        
        animatingView.addSubview(imageView)
        imageView.frame = CGRect(x: 70, y: 100, width: 150, height: 150)
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = imageView.frame.width / 2
        
        trollButton.addTarget(
            self,
            action: #selector(buttonDidTap),
            for: .touchDown
        )
        trollButton.tag = 1
        view.addSubview(trollButton)
        trollButton.setTitle("BUY", for: .normal)
        trollButton.setTitleColor(UIColor.white, for: .normal)
        trollButton.backgroundColor = .systemRed
    }
    
    private func animate() {
        UIView.animate(
            withDuration: 2,
            delay: 0,
            options: [ .repeat, .autoreverse ]
        ) { [self] in
            animatingView.backgroundColor = .systemPink
            animatingView.frame.origin.y = 300
            animatingView.backgroundColor = .magenta
            animatingView.layer.borderColor = UIColor.black.cgColor
            animatingView.layer.cornerRadius = 50
            animatingView.layer.borderWidth = 5
            animatingView.layer.shadowOpacity = 1
            animatingView.layer.shadowRadius = 20
            animatingView.transform = .init(rotationAngle: 50)
        }
        UIView.animateKeyframes(
            withDuration: 1,
            delay: 0,
            options: [ .repeat, .autoreverse ]
        ) { [self] in
            UIView.addKeyframe(
                withRelativeStartTime: 0.25,
                relativeDuration: 0.5
            ) { [self] in
                imageView.frame.origin.x = 100
                animatingView.transform = .init(rotationAngle: -50)
            }
            UIView.addKeyframe(
                withRelativeStartTime: 0.5,
                relativeDuration: 0.5
            ) { [self] in
                imageView.frame.origin.x = 50
            }
            UIView.addKeyframe(
                withRelativeStartTime: 0.75,
                relativeDuration: 0.5
            ) { [self] in
                imageView.frame = CGRect(x: 50, y: 80, width: 200, height: 200)
            }
        }
    }
    
    private func animateTrollButton() {
        animateBasic()
        UIView.animateKeyframes(
            withDuration: 1,
            delay: 0,
            options: [ .repeat, .autoreverse ]
        ) { [self] in
            trollButton.frame.origin.x = 200
            trollButton.frame.origin.x = 0
            trollButton.layer.cornerRadius = 20
//            trollAnimatingViewLabel.frame = CGRect(origin: .zero, size: CGSize(width: 400, height: 40))
            
        }
    }
    
    private func animateBasic() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.fromValue = CGPoint(x: 700, y: 750)
        animation.toValue = CGPoint(x: -200, y: 750)
        animation.duration = 8
        trollAnimatingView.layer.add(animation, forKey: "nila")
    }
    
    @objc func buttonDidTap(_ sender: UIButton!) {
        let btnSendTag: UIButton = sender
        if btnSendTag.tag == 1 {
            animatingViewLabel.font = .systemFont(ofSize: 24)
            animatingViewLabel.text = "С ТЕБЯ ПЯТЬ ТЫЩ"
            trollButton.setTitle("НЕ ПОЙМАЕШЬ!", for: .normal)
            animateTrollButton()
        }
    }
}

