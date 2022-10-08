//
//  HomeViewController.swift
//  UIKitHomework
//
//  Created by Artyom Mitrofanov on 07.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var browseCatalogButton: UIButton!
    
    @IBOutlet var greetingLabel: UILabel!
    override func viewDidLoad() {
        greetingLabel.text = "Hello, \(UserDefaults.standard.string(forKey: "Username")!)"
        super.viewDidLoad()
    }
    
    @IBAction func browseCatalogDidTap(_ sender: UIButton) {
        let browseCatalogVC: BrowseCatalogViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseCatalogViewController") as! BrowseCatalogViewController
        navigationController?.pushViewController(browseCatalogVC, animated: true)
    }
}
