//
//  WelcomeViewController.swift
//  LoginApp_SwiftBook
//
//  Created by Сергей Бабич on 18.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        welcomeLabel.text = "Welcome, \(user ?? "Username")"
    }

    @IBAction func browseCatalogTapped(_ sender: Any) {
        let rootVC = storyboard?.instantiateViewController(withIdentifier: "CatalogViewController") as! CatalogViewController

        navigationController?.pushViewController(rootVC, animated: true)
    }
}
