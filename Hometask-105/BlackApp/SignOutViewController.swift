//
//  FifthViewController.swift
//  BlackApp
//
//  Created by Данил Терлецкий on 07.10.2022.
//

import UIKit

class SignOutViewController: UIViewController {

    @IBOutlet var helloLabel: UILabel!
    @IBOutlet var signOutButton: UIButton!

    @IBAction func signOutButtonDidTap(_ sender: UIButton) {
        dismiss(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupContraints()
    }

    private func setupContraints() {
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        signOutButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            signOutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signOutButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            helloLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            helloLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            helloLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -41),
        ])
    }
}
