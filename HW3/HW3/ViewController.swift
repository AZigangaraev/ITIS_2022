//
//  ViewAnimationsController.swift
//  Animations
//
//  Created by Тимур Хайруллин on 30.09.2022.
//

import UIKit
import ImageIO

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()

    }
    
    private let animatingView: UIView = .init()
    
    private let label: UILabel = .init()
    
    private let buttonView: UIView = .init()
    
    private let buttonBuy: UILabel = .init()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animate()
    }
    
    private func setup() {
        view.addSubview(animatingView)
        view.backgroundColor = .blue
        animatingView.frame = CGRect(x: 50, y: 50, width: 300, height: 90)
        animatingView.backgroundColor = .red
        
        buttonView.frame = CGRect(x: 50, y: 690, width: 120, height: 60)
        buttonView.backgroundColor = .red
        
        view.addSubview(buttonView)
        view.addSubview(label)
        
        label.text = "КУПИТЬ СЛОНА"
        label.textColor = .green
        label.font = .systemFont(ofSize: 40)
        label.sizeToFit()
        label.frame.origin = CGPoint(x: 50, y: 50)
        
        buttonBuy.text = "ДЕШЕВО"
        buttonBuy.textColor = .yellow
        buttonBuy.font = .systemFont(ofSize: 27)
        buttonBuy.sizeToFit()
        buttonBuy.frame.origin = CGPoint(x: 50, y: 700)
        view.addSubview(buttonBuy)


    }
    
    private func animate() {
//        UIView.animate(
//            withDuration: 3,
//            delay: 0,
//            options: [.curveEaseIn, .repeat, .autoreverse]
//        ) { [self] in
//            animatingView.backgroundColor = .magenta
//            animatingView.frame.size = CGSize(width: 300, height: 300)
//        }
        

        
        
//        UIView.animateKeyframes(
//            withDuration: 2,
//            delay: 0,
//            options: [ .repeat, .autoreverse ]
//        ) { [self] in // Замыкание функции
//            UIView.addKeyframe(
//                withRelativeStartTime: 0,
//                relativeDuration: 0.5
//            ) { [self] in
//                animatingView.frame.origin.y = 600
//            }   // Замыкание функции
//            UIView.addKeyframe(
//                withRelativeStartTime: 0.5,
//                relativeDuration: 0.5
//            ){ [self] in
//                label.textColor = .green
//
//                label.frame.origin.y = 600
//            }
////            UIView.addKeyframe(
////                withRelativeStartTime: 0, relativeDuration: 0
////            ) { [self] in
////                animatingView.frame.origin.y = 300
////            }
//        }
        
        UIView.animateKeyframes(
            withDuration: 1,
            delay: 0,
            options: [ .repeat, .autoreverse ]
        ) { [ self ] in
            buttonView.frame.origin.x = 200
            buttonBuy.frame.origin.x = 200
        }
        
        UIView.animateKeyframes(
            withDuration: 2,
            delay: 0,
            options: [ .repeat, .autoreverse ]
        ) { [ self ] in
            animatingView.frame.origin.y = 600
            label.frame.origin.y = 600
        }
    }
}
