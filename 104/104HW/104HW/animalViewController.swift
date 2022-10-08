//
//  animalViewController.swift
//  104HW
//
//  Created by Карина Хайрулина on 08.10.2022.
//

import UIKit

class animalViewController: UIViewController {
    
    @IBOutlet weak var images: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
       images.image = UIImage(named: String(Int.random(in: 1...4)))
        
    }
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}



