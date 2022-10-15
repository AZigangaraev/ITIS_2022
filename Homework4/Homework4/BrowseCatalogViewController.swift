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

        setConstraints()
    }

    @IBAction private func buttDidTab(_ sender: Any) {
        let browseCatalogVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "BrowseCatalogViewController")
        
        navigationController?.pushViewController(browseCatalogVC, animated: true)
    }
    
    
    func setConstraints() {
        butt.translatesAutoresizingMaskIntoConstraints = false

        butt.topAnchor.constraint(equalTo: view.topAnchor, constant: 300).isActive = true
        butt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        butt.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true

        butt.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
}
