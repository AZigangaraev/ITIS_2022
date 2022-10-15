//
//  ViewController.swift
//  HomeWork04
//
//  Created by Радмир Фазлыев on 07.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let yourPassword = "12345"
    private let yourUsername = "radmir"
    
    @IBOutlet private var loginTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!
    @IBOutlet private var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()
        
    }
    
    @IBAction private func submitTap() {
        print("Submiting with \(loginTextField.text ?? ""): \(passwordTextField.text ?? "")")
        if loginTextField.text == yourUsername && passwordTextField.text == yourPassword {
            guard let tabBarViewController = storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as? UITabBarController else { return }
            tabBarViewController.modalPresentationStyle = .fullScreen
            present(tabBarViewController, animated: true, completion: nil)
            UserDefaults.standard.set(yourUsername, forKey: "username")
        } else {
            let alert = UIAlertController(title: "Wrong username or password", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Close", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
    func setConstraints() {
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            
            loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            loginTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -15),
            
            submitButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            submitButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            submitButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15)
            
        ])
    }
}
