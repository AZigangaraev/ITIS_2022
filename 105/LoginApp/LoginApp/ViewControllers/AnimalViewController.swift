//
//  AnimalViewController.swift
//  LoginApp
//
//  Created by Сергей Бабич on 08.10.2022.
//

import UIKit

class AnimalViewController: UIViewController {

    private lazy var animalLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        label.text = "Animal image"
        return label
    }()

    private lazy var animalImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "jiraf")
        return imageView
    }()

    private lazy var closeButton: UIButton = {
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 15)

        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = .systemMint
        buttonConfiguration.attributedTitle = AttributedString("Close", attributes: attributes)
        return UIButton(configuration: buttonConfiguration, primaryAction: UIAction { [unowned self] _ in
            dismiss(animated: true)
        })
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setSubviews(animalImage, closeButton, animalLabel)
        setConstraints()
    }

    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
    }

    private func setConstraints() {
        animalImage.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            animalImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animalImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            animalImage.heightAnchor.constraint(equalToConstant: 368),
            animalImage.heightAnchor.constraint(equalTo: animalImage.widthAnchor, multiplier: 23.0/15.0)
        ])

        closeButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ])

        animalLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            animalLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            animalLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
