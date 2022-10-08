//
//  BrowseCatalogViewController.swift
//  HomeWork04
//
//  Created by Радмир Фазлыев on 08.10.2022.
//

import UIKit

class BrowseCatalogViewController: UIViewController {

    @IBOutlet var pageNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = navigationController?.viewControllers.count ?? 0
        pageNumberLabel.text = "Page: \(value - 1)"
        
    }

    @IBAction func browseCatalogButtonDidTap(_ sender: Any) {
        let browseCatalogViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseCatalogViewController")
        navigationController?.pushViewController(browseCatalogViewController, animated: true)
    }
}
