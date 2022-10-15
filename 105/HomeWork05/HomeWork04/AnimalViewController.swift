//
//  AnimalViewController.swift
//  HomeWork04
//
//  Created by Радмир Фазлыев on 08.10.2022.
//

import UIKit

class AnimalViewController: UIViewController {

    @IBOutlet var closeButton: UIButton!
    @IBOutlet var animalImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()

        animalImageView.image = UIImage(named: String(Int.random(in: 1...3)))
    }
    
    @IBAction func closeButtonDidTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func setConstraints() {
        
        animalImageView.translatesAutoresizingMaskIntoConstraints = false
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
           
            animalImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            animalImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            closeButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
            
        ])
    }
}
