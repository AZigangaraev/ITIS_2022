//
//  ViewController.swift
//  104
//
//  Created by Роман Гиниятов on 07.10.2022.
//

import UIKit

class ViewController2: UIViewController {

    private lazy var textFieldUsername: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Username"
        return textField
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private lazy var signInButtom: UIButton = {
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 17)
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.attributedTitle = AttributedString("Sign In", attributes: attributes)
        buttonConfiguration.baseForegroundColor = .black
    
        return UIButton(configuration: buttonConfiguration, primaryAction: UIAction{
            [unowned self] _ in
            if (((textFieldUsername.text ?? "").isEmpty) || ((textFieldPassword.text ?? "").isEmpty)) {
                createAlert(title: "Warning", description: "Wrong username or password")
            
            } else {
                UserDefaults.standard.set(textFieldUsername.text, forKey: "textFieldUsername")
                guard let vc = storyboard?.instantiateViewController(withIdentifier: "TabbarViewController") else { return }
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true)
                
            }
            UserDefaults.standard.set(0, forKey: "value")
        })
        
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubviews(textFieldUsername, textFieldPassword, signInButtom)
        setConstraints()
       
    }
    
    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
    }
    
    private func setConstraints() {
        textFieldPassword.translatesAutoresizingMaskIntoConstraints = false
        textFieldUsername.translatesAutoresizingMaskIntoConstraints = false

     

        NSLayoutConstraint.activate([
            textFieldUsername.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
            textFieldUsername.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16),
            textFieldUsername.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16),
            textFieldPassword.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 16),
            textFieldPassword.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -16),
            textFieldPassword.topAnchor.constraint(equalTo: textFieldUsername.bottomAnchor, constant: 16)
        ])

        signInButtom.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            signInButtom.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 20),
            signInButtom.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

    }


    
    func createAlert(title: String?, description: String?) {

            let alertController = UIAlertController(
                title: title, message: description, preferredStyle: .alert
            )
        
            alertController.addAction(
                UIAlertAction(title: "OK", style: .default, handler: nil)
            )
        
            present(alertController, animated: true, completion: nil)

        }
}

