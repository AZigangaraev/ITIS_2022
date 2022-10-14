//
//  ViewController.swift
//  HomeWork04
//
//  Created by Илья Казначеев on 01.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    var DataBase = DB()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConstraint()
        
    }
    
    @IBAction private func signinButton() {
        if (usernameField.text == "" || passwordField.text == ""){
            let alert = UIAlertController(title: "", message: "Wrong username or paaaword", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        } else {
            DataBase.setUsername(username: usernameField.text ?? "")
            let mainTabBarViewController: MainTabBarViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(identifier: "MainTabBarViewController")
            present(mainTabBarViewController, animated: true)
        }
    }
    
    private func setupConstraint(){
        let stackView = UIStackView(
            arrangedSubviews: [ usernameField, passwordField, submitButton ]
        )
        
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}




