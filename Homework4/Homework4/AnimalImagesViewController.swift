//
//  AnimalImagesViewController.swift
//  Homework4
//
//  Created by Лада on 08.10.2022.
//

import UIKit

class AnimalImagesViewController: UIViewController {

    @IBOutlet weak var closeButtom: UIButton!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()
        closeButtom.setTitle("Close", for: .normal)
        closeButtom.tintColor = .black
        closeButtom.backgroundColor = .white
    }

    @IBAction func closeDidTab(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    
    func setConstraints() {
        closeButtom.translatesAutoresizingMaskIntoConstraints = false

        closeButtom.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        closeButtom.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        closeButtom.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -250).isActive = true

        closeButtom.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        image.translatesAutoresizingMaskIntoConstraints = false

        image.topAnchor.constraint(equalTo: closeButtom.bottomAnchor, constant: 30).isActive = true
        image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true

        image.heightAnchor.constraint(equalToConstant: 600).isActive = true
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
