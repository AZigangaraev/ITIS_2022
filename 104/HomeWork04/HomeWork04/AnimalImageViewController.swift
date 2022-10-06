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
        
    }
    


}
