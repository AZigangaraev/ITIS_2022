//
//  HomeViewController.swift
//  HomeWork04
//
//  Created by Радмир Фазлыев on 08.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var browseCatalogButton: UIButton!
    @IBOutlet var animalImagesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()
        greetingLabel.text = "Hello, \(UserDefaults.standard.string(forKey: "username") ?? " ")"
    }
    
    @IBAction func browseCatalogButtonDidTap(_ sender: Any) {
        let browseCatalogVC: BrowseCatalogViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseCatalogViewController") as! BrowseCatalogViewController
        navigationController?.pushViewController(browseCatalogVC, animated: true)
        
    }
    
    @IBAction func animalImagesButtonDidTap(_ sender: Any) {
        guard let animalViewController = storyboard?.instantiateViewController(withIdentifier: "AnimalViewController") else { return }
        present(animalViewController, animated: true)
    }
    
    func setConstraints() {
        
        greetingLabel.translatesAutoresizingMaskIntoConstraints = false
        browseCatalogButton.translatesAutoresizingMaskIntoConstraints = false
        animalImagesButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
           
            greetingLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            greetingLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            greetingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            
            animalImagesButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animalImagesButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            animalImagesButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            animalImagesButton.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -30),
            
            browseCatalogButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            browseCatalogButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            browseCatalogButton.bottomAnchor.constraint(equalTo: animalImagesButton.topAnchor, constant: -20)
        ])
    }
}
