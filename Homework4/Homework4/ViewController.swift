//
//  ViewController.swift
//  Homework4
//
//  Created by Лада on 01.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Image.jpeg")!)
        setConstraints()

    }

    @IBOutlet private var loginField: UITextField!
    @IBOutlet private var passwordField: UITextField!
    @IBOutlet private var submitButton: UIButton!
    
    
    @IBAction private func submitTap() {
        
        UserDefaults.standard.set(loginField.text, forKey: "name")
        
        if loginField.text == "" || passwordField.text == "" {
            // 1. Create Alert
            let alert = UIAlertController(title: "Wronge username or password",
                                          message: "Please change",
                                          preferredStyle: .alert)
            // 2. Creeate Actions
            alert.addAction(UIAlertAction(title: "Update",
                                          style: .default,
                                          handler: { _ in print("OK tap") }))
            // 3. Snow
            present(alert, animated: true, completion: nil)
            
            
        } else {
            didTabButtom()
        }
      }
    
    @objc func didTabButtom() {
        UserDefaults.standard.set(loginField.text, forKey: "name")
        let tabBar = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarViewController")
        tabBar.modalPresentationStyle = .fullScreen
        self.present(tabBar, animated: true)

    }
    
    func setConstraints() {
     
        loginField.translatesAutoresizingMaskIntoConstraints = false

        loginField.topAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
        loginField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        loginField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true

        loginField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        loginField.widthAnchor.constraint(equalToConstant: 100).isActive = true

        
        passwordField.translatesAutoresizingMaskIntoConstraints = false

        passwordField.topAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 30).isActive = true
        passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true

        passwordField.heightAnchor.constraint(equalToConstant: 40).isActive = true

        
        submitButton.translatesAutoresizingMaskIntoConstraints = false

        submitButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 50).isActive = true
        submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -150).isActive = true

        submitButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        submitButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
