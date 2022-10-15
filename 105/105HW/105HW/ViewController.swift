//
//  ViewController.swift
//  105HW
//
//  Created by Карина Хайрулина on 13.10.2022.
//

import UIKit

class ViewController: UIViewController {
    private let Password = "karina"
    private let Username = "Karina"
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstrains()

    }
    @IBAction func signInButton(_ sender: Any) {
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


    private func setupConstrains() {
        let stackView = UIStackView(
            arrangedSubviews: [ label, loginTextField, passwordTextField]
        )
        
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 10),
            stackView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor,constant: 10),
            
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30)
        ])
    }
}
    

