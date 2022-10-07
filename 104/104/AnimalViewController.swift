//
//  AnimalViewController.swift
//  104
//
//  Created by Роман Гиниятов on 08.10.2022.
//

import UIKit

class AnimalViewController: UIViewController {

    @IBOutlet var imageViewAnimal: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewAnimal.image = UIImage(named: "photo2.jpeg")
        
    }
    
    
    

}
