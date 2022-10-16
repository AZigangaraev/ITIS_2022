//
//  ThirdViewController.swift
//  BlackApp
//
//  Created by Данил Терлецкий on 07.10.2022.
//

import UIKit

class CatalogViewController: UIViewController {

    @IBOutlet private var pageNumberLabel: UILabel!
    @IBOutlet var browseCatalogButton: UIButton!

    @objc private func backTap() {
        navigationController?.popViewController(animated: true)
    }

    @IBAction private func browseCatalogButtonDidTap() {
        let catalogVC: CatalogViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "CatalogViewController")
        navigationController?.pushViewController(catalogVC, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        pageNumberLabel.text = "Catalog. Page \( (navigationController?.viewControllers.count ?? 3) - 1)"

        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Back", style: .plain, target: self,
            action: #selector(backTap))

        setupContraints()
    }

    private func setupContraints() {
        pageNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        browseCatalogButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            browseCatalogButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            browseCatalogButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            browseCatalogButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -211),

            pageNumberLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            pageNumberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            pageNumberLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -41),
        ])
    }
}
