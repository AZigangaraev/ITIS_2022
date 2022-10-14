//
//  AnimalImageViewController.swift
//  HomeWork04
//
//  Created by Илья Казначеев on 02.10.2022.
//

import UIKit

class AnimalImageViewController: UIViewController {

    @IBOutlet var animalImage: UIImageView!
    @IBOutlet var animalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalLabel.text = "Animal image"
        
        
        animalLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animalLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            animalLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            animalLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animalLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20)
                ])
        
    }
    


}
