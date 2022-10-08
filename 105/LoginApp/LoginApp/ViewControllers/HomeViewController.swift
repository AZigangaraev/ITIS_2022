//
//  HomeViewController.swift
//  LoginApp
//
//  Created by Сергей Бабич on 08.10.2022.
//

import UIKit

class HomeViewController: UIViewController {

    private lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        label.text = "Hello"
        return label
    }()

    private lazy var browseButton: UIButton = {
        createButton(
            withTitle: "Browse catalog",
            andColor: .systemMint,
            action: UIAction { [unowned self] _ in
                guard let rootVC = storyboard?.instantiateViewController(withIdentifier: "browseVC") as? BrowseCatalogViewController else { return }

                navigationController?.pushViewController(rootVC, animated: true)
            }
        )
    }()

    private lazy var animalButton: UIButton = {
        createButton(
            withTitle: "Animal images",
            andColor: .systemMint,
            action: UIAction { [unowned self] _ in
                guard let animalVC = storyboard?.instantiateViewController(withIdentifier: "animalVC") as? AnimalViewController else { return }
                animalVC.modalPresentationStyle = .fullScreen

                present(animalVC, animated: true)
            }
        )
    }()

    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        setSubviews(usernameLabel, browseButton, animalButton)
        setConstraints()
        usernameLabel.text = "Hello, \(username ?? "Error")"
    }

    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
    }

    private func setConstraints() {
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            usernameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            usernameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            usernameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])

        browseButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            browseButton.topAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 40),
            browseButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])

        animalButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            animalButton.topAnchor.constraint(equalTo: browseButton.bottomAnchor, constant: 15),
            animalButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }

    private func createButton(
        withTitle title: String,
        andColor color: UIColor,
        action: UIAction
    ) -> UIButton {
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 15)

        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.attributedTitle = AttributedString(title, attributes: attributes)
        buttonConfiguration.baseBackgroundColor = color
        buttonConfiguration.baseForegroundColor = .black
        return UIButton(configuration: buttonConfiguration, primaryAction: action)
    }
}
