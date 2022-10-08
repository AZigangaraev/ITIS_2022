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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
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
