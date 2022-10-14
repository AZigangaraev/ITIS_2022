//
//  FourthViewController.swift
//  BlackApp
//
//  Created by Данил Терлецкий on 07.10.2022.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet var animalImage: UIImageView!
    @IBOutlet var animalImageLabel: UILabel!

    @objc private func backTap() {
        navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Close", style: .plain, target: self,
            action: #selector(backTap))

        setupConstraints()
    }

    private func setupConstraints() {
        animalImage.translatesAutoresizingMaskIntoConstraints = false
        animalImageLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            animalImageLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            animalImageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            animalImageLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -41),

            animalImage.topAnchor.constraint(equalTo: animalImageLabel.topAnchor, constant: 50),
            animalImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            animalImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -41)
        ])
    }
}
