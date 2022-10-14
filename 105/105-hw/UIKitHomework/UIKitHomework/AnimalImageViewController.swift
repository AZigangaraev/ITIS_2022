//
//  AnimalImageViewController.swift
//  UIKitHomework
//
//  Created by Artyom Mitrofanov on 07.10.2022.
//

import UIKit

class AnimalImageViewController: UIViewController {
    
    @IBOutlet var animalImage: UIImageView!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalImage.image = UIImage(named: "cat")
        titleLabel.font = UIFont.systemFont(ofSize: 22)
        setupConstraints()
    }
    
    private func setupConstraints() {
        animalImage.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animalImage.centerXAnchor.constraint(equalTo:
                                                    view.centerXAnchor,
                                                 constant: 0),
            animalImage.centerYAnchor.constraint(equalTo:
                                                    view.centerYAnchor,
                                                 constant: 10),
            animalImage.trailingAnchor.constraint(equalTo:
                                                    view.trailingAnchor,
                                                  constant: -20),
            animalImage.leadingAnchor.constraint(equalTo:
                                                    view.leadingAnchor,
                                                 constant: 20),
            animalImage.heightAnchor.constraint(equalToConstant: 500)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo:
                                                    view.centerXAnchor,
                                                constant: 0),
            titleLabel.centerYAnchor.constraint(equalTo:
                                                    view.centerYAnchor,
                                                constant: -270),
            titleLabel.leadingAnchor.constraint(equalTo:
                                                    view.leadingAnchor,
                                                constant: 130),
            titleLabel.trailingAnchor.constraint(equalTo:
                                                    view.trailingAnchor,
                                                 constant: -100)
        ])
        
        NSLayoutConstraint.activate([
            backButton.centerXAnchor.constraint(equalTo:
                                                    view.centerXAnchor,
                                                constant: 0),
            backButton.centerYAnchor.constraint(equalTo:
                                                    view.centerYAnchor,
                                                constant: -270),
            backButton.trailingAnchor.constraint(equalTo:
                                                    view.trailingAnchor,
                                                 constant: 0),
            backButton.leadingAnchor.constraint(equalTo:
                                                    view.leadingAnchor,
                                                constant: -300)
        ])
    }
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
