//
//  ViewController.swift
//  HW4
//
//  Created by Тимур Хайруллин on 05.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func Sign(_ sender: Any) {
        guard let username = userField.text else {return}
        guard let password = passwordField.text else {return}

        if username == "Timur", password == "qwerty" {
            guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "HelloViewController") else {return}
//            present(nextVC, animated: true)

            guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "HelloViewController") else {return}
            navigationController?.pushViewController(nextVC, animated: true)
            navigationController?.isNavigationBarHidden = true
        }

        else {
            alert(message: "Wrong username or password", textField: nil)
        }
    }

    private func alert(message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) {
            _ in textField?.text = ""
        }
        alert.addAction(ok)
        present(alert, animated: true)
    }

}
