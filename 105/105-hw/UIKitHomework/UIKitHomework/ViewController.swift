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
        setConstrains()
    }
    
    private func setConstrains() {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(usernameField)
        stackView.addArrangedSubview(passwordField)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo:
                                                view.centerYAnchor,
                                               constant: -217),
            stackView.centerXAnchor.constraint(equalTo:
                                                view.centerXAnchor,
                                               constant: 0),
            stackView.leadingAnchor.constraint(equalTo:
                                                view.leadingAnchor,
                                               constant: 10),
            stackView.trailingAnchor.constraint(equalTo:
                                                    view.trailingAnchor,
                                                constant: -10),
        ])
        
        NSLayoutConstraint.activate([
            usernameField.heightAnchor.constraint(equalToConstant: 50),
            passwordField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signInButton.centerYAnchor.constraint(equalTo:
                                                    view.centerYAnchor,
                                                  constant: -95),
            signInButton.centerXAnchor.constraint(equalTo:
                                                    view.centerXAnchor,
                                                  constant: 0)
        ])
        
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


