//
//  SecondViewController.swift
//  BlackApp
//
//  Created by Данил Терлецкий on 07.10.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var helloLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func browseCatalogButtonDidTap() {
        let thirdVC = (storyboard?.instantiateViewController(withIdentifier: "ThirdViewController"))!

//        UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ThirdViewController")

        navigationController?.pushViewController(thirdVC, animated: true)
    }

    @IBAction private func animalImagesButtonDidTap() {
        let fourthVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "FourthViewController")

        present(fourthVC, animated: true)
    }
}
