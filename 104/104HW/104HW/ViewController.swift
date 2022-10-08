//
//  ViewController.swift
//  104HW
//
//  Created by Карина Хайрулина on 01.10.2022.
//

import UIKit

class ViewController: UIViewController {
    private let Password = "karina"
    private let Username = "Karina"
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func signInButtton(_ sender: Any) {
        let password = passwordTextField.text
        let username = loginTextField.text
        if (password != Password || username != Username) {
            let alertController = UIAlertController(title: "ERROR", message: "Wrong password or login", preferredStyle: .alert)
            let action = UIAlertAction(title: "Okay", style: .default) {(action) in
            }
            alertController.addAction(action)
            self.present(alertController, animated: true)
        } else {
            guard let tabBarViewController = storyboard?.instantiateViewController(withIdentifier: "tabBarController") as? UITabBarController else { return }
            tabBarViewController.modalPresentationStyle = .fullScreen
            present(tabBarViewController, animated: true, completion: nil)
            UserDefaults.standard.set(username, forKey: "user")
        }
    }
}
