//
//  CatalogViewController.swift
//  Homework4
//
//  Created by elya on 08.10.2022.
//

import UIKit

class CatalogViewController: UIViewController {
    
    @IBOutlet private var counter: UILabel!
    @IBOutlet private var browseCatalog: UIButton!
    
    @IBAction func browseCatalogDidTap(_ sender: Any) {
        let nextVC: UIViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(identifier: "CatalogViewController")
        
        navigationController?.pushViewController(nextVC, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
