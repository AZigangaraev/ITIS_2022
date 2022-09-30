//
//  ViewController.swift
//  Test
//
//  Created by Лада on 21.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var honey: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
        NotificationCenter.default.addObserver(
            self, selector: #selector(reanimate),
            name: UIApplication.willEnterForegroundNotification,
            object: nil
        )
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Image-1.jpeg")!)
    }

    @objc func reanimate() {
        animate()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        animate()
    }

    private let animatingView: UIView = .init()
    private let imageView: UIView = .init()
    private let label: UILabel = .init()
    private let label2: UILabel = .init()
    private let label3: UILabel = .init()
    private let label4: UILabel = .init()
    private let label5: UILabel = .init()

    private func setup() {
        view.addSubview(animatingView)
//        view.backgroundColor = .orange
        animatingView.frame = CGRect(x: 27, y: 180, width: 270, height: 270)
        animatingView.backgroundColor = .red
        
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 27, y: 180, width: 270, height: 270)
        imageView.backgroundColor = UIColor(patternImage:  UIImage(named: "Image.jpeg")!)

        view.addSubview(label)
        label.text = "Внимание!"
        label.textColor = .red
        label.font = .systemFont(ofSize: 50)
        label.sizeToFit()
        label.frame.origin = CGPoint(x: 40, y: 30)
        
        view.addSubview(label2)
        label2.text = "Акция!"
        label2.font = .systemFont(ofSize: 30)
        label2.sizeToFit()
        label2.frame.origin = CGPoint(x: 120, y: 90)
        
        view.addSubview(label3)
        label3.text = "Башкирский мёд, 2л по цене 1"
        label3.font = .systemFont(ofSize: 19)
        label3.sizeToFit()
        label3.frame.origin = CGPoint(x: 27, y: 130)
        
        view.addSubview(label4)
        label4.text = " по адресу: Ленина 12 "
        label.textColor = .red
        label4.font = .systemFont(ofSize: 20)
        label4.sizeToFit()
        label4.frame.origin = CGPoint(x: 27, y: 480)
        
        view.addSubview(label5)
        label5.text = " ДК 'МЕТAЛЛУРГ' "
        label.textColor = .red
        label5.font = .systemFont(ofSize: 20)
        label5.sizeToFit()
        label5.frame.origin = CGPoint(x: 27, y: 500)

    }

    private func animate() {
        UIView.animate(
            withDuration: 0.3,
            delay: 0,
            options: [ .repeat, .autoreverse ]
        ) { [self] in
            label.frame.origin.x = 50
        }

        UIView.animate(withDuration: 2, animations: { () -> Void in
            self.label4.backgroundColor = .white
            self.label5.backgroundColor = .white
        })
        
        UIView.animateKeyframes(
            withDuration: 5,
            delay: 0,
            options: [ .repeat, .autoreverse ]
        ) { [self] in

            UIView.addKeyframe(
                withRelativeStartTime: 0.25, relativeDuration: 0.1
            ) { [self] in
                animatingView.frame.origin.x = 13
                animatingView.frame.origin.y = 165
                animatingView.frame.size = CGSize(width: 297, height: 297)
            }
        }
    }
}
