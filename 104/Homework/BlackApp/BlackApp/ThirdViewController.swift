//
//  ThirdViewController.swift
//  BlackApp
//
//  Created by Данил Терлецкий on 07.10.2022.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet private var pageNumberLabel: UILabel!

    @objc private func backTap() {
        navigationController?.popViewController(animated: true)
    }

    @IBAction private func browseCatalogButtonDidTap() {
        let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ThirdViewController")
        navigationController?.pushViewController(nextVC, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        pageNumberLabel.text = "Catalog. Page \( (navigationController?.viewControllers.count ?? 3) - 2)"

        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Close", style: .plain, target: self,
            action: #selector(backTap))
    }
}
