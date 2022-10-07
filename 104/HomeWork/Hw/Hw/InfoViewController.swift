//
//  InfoViewController.swift
//  Hw
//
//  Created by Максим Тарасов on 07.10.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "Catalog, Page: \(navigationController?.viewControllers.count ?? 0)"
        // Do any additional setup after loading the view.
    }


}
