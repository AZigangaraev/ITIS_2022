//
//  FourthViewController.swift
//  BlackApp
//
//  Created by Данил Терлецкий on 07.10.2022.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet var animalImage: UIImageView!

    @objc private func backTap() {
        navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Close", style: .plain, target: self,
            action: #selector(backTap))
    }
}
