//
//  FirstViewController.swift
//  Homework4
//
//  Created by Лада on 02.10.2022.
//

import UIKit

class FirstViewController: UIViewController {
    var name: String = "First vc"
    
    
    @IBOutlet private var hellolable: UILabel!
    @IBOutlet private var browseCatalogButton: UIButton!
    @IBOutlet private var animalImagesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        tabBarItem.badgeColor = .white
        hellolable.backgroundColor = .white
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Image-1.jpeg")!)
        hellolable.text = "Hello, \(UserDefaults.standard.string(forKey: "name") ?? "")!"
        setupButtons()
        setConstraints()
    }
    
    func setupButtons() {
        browseCatalogButton.tintColor = .black
        browseCatalogButton.backgroundColor = .white
        browseCatalogButton.setTitle("Browse", for: .normal)
        animalImagesButton.tintColor = .black
        animalImagesButton.backgroundColor = .white
        animalImagesButton.setTitle("Image", for: .normal)
    }
    
    @IBAction func animalImagesButtoDidTab() {
        let animalImageVC = storyboard?.instantiateViewController(withIdentifier: "AnimalImagesViewController")
        animalImageVC?.modalPresentationStyle = .fullScreen
        present(animalImageVC!, animated: true)
    }

    @IBAction func browseCatalogDidTab() {
        let browseCatalogVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "BrowseCatalogViewController")
        
        navigationController?.pushViewController(browseCatalogVC, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    func setConstraints() {
        hellolable.translatesAutoresizingMaskIntoConstraints = false

        hellolable.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        hellolable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        hellolable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true

        hellolable.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        browseCatalogButton.translatesAutoresizingMaskIntoConstraints = false

        browseCatalogButton.topAnchor.constraint(equalTo: hellolable.topAnchor, constant: 200).isActive = true
        browseCatalogButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        browseCatalogButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true

        browseCatalogButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        animalImagesButton.translatesAutoresizingMaskIntoConstraints = false

        animalImagesButton.topAnchor.constraint(equalTo: browseCatalogButton.topAnchor, constant: 70).isActive = true
        animalImagesButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        animalImagesButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true

        animalImagesButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        animalImagesButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
