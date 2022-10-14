//
//  BrowseCatalogViewController.swift
//  UIKitHomework
//
//  Created by Artyom Mitrofanov on 08.10.2022.
//

import UIKit

var catalogNumber: Int = 1

class BrowseCatalogViewController: UIViewController {

    @IBOutlet var closeButton: UIButton!
    @IBOutlet var catalogPageLabel: UILabel!
    @IBOutlet var browseCatalogButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catalogPageLabel.text = "Catalog, Page \(catalogNumber)"
        catalogPageLabel.font = UIFont.systemFont(ofSize: 25)
        setupConstrains()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }

    
    private func setupConstrains() {
        browseCatalogButton.translatesAutoresizingMaskIntoConstraints = false
        catalogPageLabel.translatesAutoresizingMaskIntoConstraints = false
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            browseCatalogButton.centerXAnchor.constraint(equalTo:
                                                            view.centerXAnchor,
                                                         constant: 0),
            browseCatalogButton.centerYAnchor.constraint(equalTo:
                                                            view.centerYAnchor,
                                                         constant: 0),
            browseCatalogButton.trailingAnchor.constraint(equalTo:
                                                            view.trailingAnchor,
                                                          constant: -20),
            browseCatalogButton.leadingAnchor.constraint(equalTo:
                                                            view.leadingAnchor,
                                                         constant: 20),
            browseCatalogButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            catalogPageLabel.centerXAnchor.constraint(equalTo:
                                                        view.centerXAnchor,
                                                      constant: 0),
            catalogPageLabel.centerYAnchor.constraint(equalTo:
                                                        view.centerYAnchor,
                                                      constant: -270),
            catalogPageLabel.trailingAnchor.constraint(equalTo:
                                                        view.trailingAnchor,
                                                       constant: -100),
            catalogPageLabel.leadingAnchor.constraint(equalTo:
                                                        view.leadingAnchor,
                                                      constant: 100)
        ])
        
        NSLayoutConstraint.activate([
            closeButton.centerXAnchor.constraint(equalTo:
                                                    view.centerXAnchor,
                                                 constant: 0),
            closeButton.centerYAnchor.constraint(equalTo:
                                                    view.centerYAnchor,
                                                 constant: -270),
            closeButton.trailingAnchor.constraint(equalTo:
                                                    view.trailingAnchor,
                                                  constant: 0),
            closeButton.leadingAnchor.constraint(equalTo:
                                                    view.leadingAnchor,
                                                 constant: -300)
        ])
    }
    
    @IBAction func closeButtonDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        if catalogNumber != 1 {
            catalogNumber = catalogNumber - 1
        }
    }
    
    @IBAction func browseCatalogDidTap(_ sender: Any) {
        let browseCatalogVC: BrowseCatalogViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseCatalogViewController") as! BrowseCatalogViewController
        navigationController?.pushViewController(browseCatalogVC, animated: true)
        catalogNumber = catalogNumber + 1
    }
}
