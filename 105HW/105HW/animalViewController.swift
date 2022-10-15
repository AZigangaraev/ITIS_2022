//
//  animalViewController.swift
//  105HW
//
//  Created by Карина Хайрулина on 13.10.2022.
//

import UIKit

class animalViewController: UIViewController {
    
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var closeImageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images.image = UIImage(named: String(Int.random(in: 1...4)))
        setupConstrains()
    }
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    private func setupConstrains() {
        images.translatesAutoresizingMaskIntoConstraints = false
        closeImageButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            images.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            images.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            images.heightAnchor.constraint(equalToConstant: 400),
            images.widthAnchor.constraint(equalToConstant: 400),
            
            closeImageButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            closeImageButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30)
        ])
    }
}
