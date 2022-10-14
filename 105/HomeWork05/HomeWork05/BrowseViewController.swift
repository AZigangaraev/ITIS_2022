//
//  BrowseViewController.swift
//  HomeWork04
//
//  Created by Илья Казначеев on 02.10.2022.
//

import UIKit

class BrowseViewController: UIViewController {

    @IBOutlet weak var browseButton: UIButton!

    @IBOutlet weak var catalogLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var countOfPage = navigationController?.viewControllers.count ?? 0

        catalogLabel.text = "Catalog, Page: \(countOfPage - 1)"
        
        browseButton.layer.cornerRadius = 30
        browseButton.layer.borderWidth = 5
        
        browseButton.widthAnchor.constraint(equalToConstant:250.0).isActive = true
        browseButton.heightAnchor.constraint(equalToConstant: 60.0).isActive = true
        
        browseButton.translatesAutoresizingMaskIntoConstraints = false
        catalogLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            catalogLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            catalogLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            catalogLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            catalogLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 15),
            browseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            browseButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                ])
        
        
    }
    

    @IBAction func browseWasTapped(_ sender: Any) {
        let browseViewController: BrowseViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(identifier: "BrowseViewController")
        
        navigationController?.pushViewController(browseViewController, animated: true)
    }


}
