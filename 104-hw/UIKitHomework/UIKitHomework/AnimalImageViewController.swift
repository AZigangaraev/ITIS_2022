//
//  AnimalImageViewController.swift
//  UIKitHomework
//
//  Created by Artyom Mitrofanov on 07.10.2022.
//

import UIKit

class AnimalImageViewController: UIViewController {
    
    @IBOutlet var animalImage: UIImageView!
    
    @IBOutlet var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalImage.image = UIImage(named: "cat")
    }
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
