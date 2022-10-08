//
//  ViewController.swift
//  UIKitHomework
//
//  Created by Artyom Mitrofanov on 07.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var usernameField: UITextField!
    @IBOutlet private var passwordField: UITextField!
    @IBOutlet private var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signInDidTap(_ sender: UIButton) {
        
        guard let username = usernameField.text else { return }
        guard let password = passwordField.text else { return }
        
        if username.isEmpty || password.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Wrong username or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        } else {
            UserDefaults.standard.set(usernameField.text, forKey: "Username")
            guard let TapBarViewController = storyboard?.instantiateViewController(withIdentifier: "TapBarViewController") else { return }
            present(TapBarViewController, animated: true)
        }
    }
}
