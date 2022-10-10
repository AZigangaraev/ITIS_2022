//
//  ViewController.swift
//  Hw
//
//  Created by Максим Тарасов on 07.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logInButton)
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: loginTextField, attribute: .centerY,
                               relatedBy: .equal, toItem: view,
                               attribute: .centerY, multiplier: 1,
                               constant: 0),
            NSLayoutConstraint(item: loginTextField, attribute: .centerX,
                               relatedBy: .equal, toItem: view,
                               attribute: .centerX, multiplier: 1,
                               constant: 0),
            NSLayoutConstraint(item: loginTextField, attribute: .left,
                               relatedBy: .equal, toItem: view,
                               attribute: .left, multiplier: 1,
                               constant: 15),
            NSLayoutConstraint(item: loginTextField, attribute: .right,
                               relatedBy: .equal, toItem: view,
                               attribute: .right, multiplier: 1,
                               constant: -15),
            NSLayoutConstraint(item: loginTextField, attribute: .centerX,
                               relatedBy: .equal, toItem: view,
                               attribute: .centerX, multiplier: 1,
                               constant: 0),
            NSLayoutConstraint(item: passwordTextField, attribute: .centerY,
                               relatedBy: .equal, toItem: loginTextField,
                               attribute: .centerY, multiplier: 1,
                               constant: 40),
            NSLayoutConstraint(item: passwordTextField, attribute: .centerX,
                               relatedBy: .equal, toItem: loginTextField,
                               attribute: .centerX, multiplier: 1,
                               constant: 0),
            NSLayoutConstraint(item: passwordTextField, attribute: .left,
                               relatedBy: .equal, toItem: loginTextField,
                               attribute: .left, multiplier: 1,
                               constant: 0),
            NSLayoutConstraint(item: passwordTextField, attribute: .right,
                               relatedBy: .equal, toItem: loginTextField,
                               attribute: .right, multiplier: 1,
                               constant: 0),
            NSLayoutConstraint(item: logInButton, attribute: .centerY,
                               relatedBy: .equal, toItem: passwordTextField,
                               attribute: .centerY, multiplier: 1,
                               constant: 40),
            NSLayoutConstraint(item: logInButton, attribute: .centerX,
                               relatedBy: .equal, toItem: passwordTextField,
                               attribute: .centerX, multiplier: 1,
                               constant: 0),
        ])
    }

    @IBAction func logInButton(_ sender: Any) {
        if loginTextField.text == "Maksim" && passwordTextField.text == "Qwerty123"{
            let tabVC = (storyboard?.instantiateViewController(withIdentifier: "TabBarViewController"))!
            tabVC.modalPresentationStyle = .fullScreen
            navigationController?.present(tabVC, animated: true)
            //navigationController?.pushViewController(tabVC, animated: true)
        }else{
            let alert = UIAlertController(title: "Error", message: "Wrong username or password.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"Error\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }

}
