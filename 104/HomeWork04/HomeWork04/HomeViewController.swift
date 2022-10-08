//
//  HomeViewController.swift
//  HomeWork04
//
//  Created by Радмир Фазлыев on 08.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    var username = ""
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var browseCatalogButton: UIButton!
    @IBOutlet var animalImagesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Hello, \(username)"
    }
    
    @IBAction func browseCatalogButtonDidTap(_ sender: Any) {
        let browseCatalogVC: BrowseCatalogViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseCatalogViewController") as! BrowseCatalogViewController
        navigationController?.pushViewController(browseCatalogVC, animated: true)
        
    }
    
    @IBAction func animalImagesButtonDidTap(_ sender: Any) {
        guard let animalViewController = storyboard?.instantiateViewController(withIdentifier: "AnimalViewController") else { return }
        present(animalViewController, animated: true)
    }
}
