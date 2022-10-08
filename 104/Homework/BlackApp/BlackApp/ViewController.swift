//
//  ViewController.swift
//  BlackApp
//
//  Created by Данил Терлецкий on 07.10.2022.
//

import UIKit

class ViewController: UIViewController {

    private let userName: String = "test"
    private let password: String = "1234"

    @IBOutlet private var usernameField: UITextField!
    @IBOutlet private var passwordField: UITextField!
    @IBOutlet private var signInButton: UIButton!

    @IBAction private func signInButtonDidTap() {
        // Валидация логина и пароля
        validate(with: usernameField.text ?? "", and: passwordField.text ?? "")
    }

    private func validate(with userName: String, and password: String) {
        if userName != self.userName || password != self.password {
            let alert = UIAlertController(title: "", message: "Wrong username!", preferredStyle: .alert)
            alert.addAction(
                UIAlertAction(title: "OK", style: .default, handler: nil)
            )
            present(alert, animated: true)
        } else {

            let tabbarVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "TabBarViewController")

            tabbarVC.modalPresentationStyle = .fullScreen
            navigationController?.present(tabbarVC, animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func getUserName() -> String {
        self.userName
    }
}

