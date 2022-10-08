//
//  ViewController.swift
//  Homework4
//
//  Created by elya on 01.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var loginTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!
    @IBOutlet private var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
    }
    
    @IBAction private func submitButtonDidTap(_ sender: Any) {

        guard let login = loginTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        if !isLoginValid(login) || !isPasswordValid(password) {
            somethingIsWrong()
        } else {
            // переходим модально на экран с двумя табами
           let tabBarVC: UITabBarController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(identifier: "TabBarController")
            
            tabBarVC.modalPresentationStyle = .fullScreen
            present(tabBarVC, animated: true)
        }
    }

    
    // логин: не менее 3 символов, хотя бы 1 заглавная буква и 2 строчных
    func isLoginValid(_ login : String) -> Bool{
        let loginTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Z])(?=.*[a-z].*[a-z]).{3,}")
        return loginTest.evaluate(with: login)
    }
    // пароль: не менее 8 символов, хотя бы 2 цифры
    func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[0-9].*[0-9]).{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    
    func somethingIsWrong() {
            // create the alert
        let alert = UIAlertController(title: nil, message: "Неверный логин или пароль.", preferredStyle: UIAlertController.Style.alert)
            // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {(action) in alert.dismiss(animated: true, completion: nil)}))
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }


}

