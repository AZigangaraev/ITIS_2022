//
//  BrowseCatalogViewController.swift
//  Homework4
//
//  Created by Лада on 08.10.2022.
//

import UIKit

class BrowseCatalogViewController: UIViewController {
    
    @IBOutlet private var butt: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let x = navigationController?.viewControllers.count ?? 0
        self.navigationItem.title = "Catalog, Page: {\(x)}"

    }

    @IBAction private func buttDidTab(_ sender: Any) {
        let browseCatalogVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "BrowseCatalogViewController")
        
        navigationController?.pushViewController(browseCatalogVC, animated: true)
    }
    
}
