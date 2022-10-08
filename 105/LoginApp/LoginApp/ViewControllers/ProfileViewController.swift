//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Сергей Бабич on 08.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    private lazy var usernameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        label.text = "Hello"
        return label
    }()

    private lazy var signOutButton: UIButton = {
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 24)
        attributes.foregroundColor = .black

        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = .systemMint
        buttonConfiguration.attributedTitle = AttributedString("Sign Out", attributes: attributes)
        return UIButton(configuration: buttonConfiguration, primaryAction: UIAction { [unowned self] _ in
            dismiss(animated: true)
        })
    }()
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        setSubviews(usernameLabel, signOutButton)
        setConstraints()
        usernameLabel.text = "Hello, \(username ?? "Error")"
    }

    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
    }

    private func setConstraints() {
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            usernameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            usernameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            usernameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])

        signOutButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            signOutButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            signOutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
