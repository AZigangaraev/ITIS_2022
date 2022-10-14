//
//  ProfileViewController.swift
//  HomeWork04
//
//  Created by Илья Казначеев on 02.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var DataBase = DB()
    
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var helloLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        helloLabel.text = "Hello, \(DataBase.getUsername())"
        
        signinButton.layer.cornerRadius = 30
        signinButton.layer.borderWidth = 5
        
        signinButton.widthAnchor.constraint(equalToConstant:250.0).isActive = true
        signinButton.heightAnchor.constraint(equalToConstant: 60.0).isActive = true

        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        signinButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            helloLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            helloLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 15),
            signinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signinButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),

        ])
    }
    
    @IBAction func signoutTapped(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    

}
