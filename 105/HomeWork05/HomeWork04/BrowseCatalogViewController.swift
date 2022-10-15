//
//  BrowseCatalogViewController.swift
//  HomeWork04
//
//  Created by Радмир Фазлыев on 08.10.2022.
//

import UIKit

class BrowseCatalogViewController: UIViewController {

    @IBOutlet var browseCatalogButton: UIButton!
    @IBOutlet var pageNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()
        let value = navigationController?.viewControllers.count ?? 0
        pageNumberLabel.text = "Page: \(value - 1)"
        
    }

    @IBAction func browseCatalogButtonDidTap(_ sender: Any) {
        let browseCatalogViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseCatalogViewController")
        navigationController?.pushViewController(browseCatalogViewController, animated: true)
    }
    
    func setConstraints() {
        
        pageNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        browseCatalogButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
           
            pageNumberLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            pageNumberLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            pageNumberLabel.bottomAnchor.constraint(equalTo: browseCatalogButton.topAnchor, constant: -10),
            
            browseCatalogButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            browseCatalogButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            browseCatalogButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            browseCatalogButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15)
            
        ])
    }
}
