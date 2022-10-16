//
//  SecondViewController.swift
//  BlackApp
//
//  Created by Данил Терлецкий on 07.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var helloLabel: UILabel!

    @IBOutlet var browseCatalogButton: UIButton!
    @IBOutlet var animalImagesButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupStackViewsAndContraints()
    }

    @IBAction private func browseCatalogButtonDidTap() {
        let catalogVC = (storyboard?.instantiateViewController(withIdentifier: "CatalogViewController"))!

        navigationController?.pushViewController(catalogVC, animated: true)
    }

    @IBAction private func animalImagesButtonDidTap() {
        let animalImagesVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "AnimalImagesViewController")

        present(animalImagesVC, animated: true)
    }


    private func setupStackViewsAndContraints() {
        let stackView = UIStackView(arrangedSubviews: [
            browseCatalogButton, animalImagesButton
        ])

        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)

        helloLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -211),

            helloLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            helloLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            helloLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -41),
        ])
    }

}
