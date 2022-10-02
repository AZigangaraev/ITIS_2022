//
//  AnimalImageViewController.swift
//  LoginApp_SwiftBook
//
//  Created by Сергей Бабич on 01.10.2022.
//

import UIKit

class AnimalImageViewController: UIViewController {

    @IBOutlet var animalImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Close", style: .plain, target: self,
            action: #selector(closeTap)
        )

        animalImage.image = UIImage(named: "jiraf")
    }

    @objc private func closeTap() {
        presentingViewController?.dismiss(animated: true)
    }
}
