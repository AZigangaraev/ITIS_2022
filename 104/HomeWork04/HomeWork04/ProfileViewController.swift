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
    }
    
    @IBAction func signoutTapped(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    

}
