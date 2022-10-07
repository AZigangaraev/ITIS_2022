//
//  ViewController.swift
//  hw4
//
//  Created by Илья Гребеньков on 07.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var passLabel: UITextField!
    @IBOutlet weak var usernameLabel: UITextField!
    @IBOutlet weak var buttonEnter: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func buttonDidTap(_ sender: Any) {
        if usernameLabel.text == "" || passLabel.text == "" {
            let alertController = UIAlertController(
                title: "", message: "Wrong username and password", preferredStyle: .alert
            )
            alertController.addAction(
                UIAlertAction(title: "OK", style: .default, handler: nil)
            )
            present(alertController, animated: true, completion: nil)
        } else {
            UserDefaults.standard.set(usernameLabel.text, forKey: "name")
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let mainTabBarController = storyboard.instantiateViewController(withIdentifier: "tabBar")
            mainTabBarController.modalPresentationStyle = .fullScreen
            self.present(mainTabBarController, animated: true)
        }
    }
}

