//
//  ViewController.swift
//  LoginApp_SwiftBook
//
//  Created by Сергей Бабич on 18.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.login
        passwordTF.text = user.password
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user.login
            } else if let navigationVC = $0 as? UINavigationController {
                guard
                    let userInfoVC = navigationVC.topViewController as? UserInfoViewController
                else { return }
                userInfoVC.user = user
            }
        }
    }
    
    @IBAction func logInDidTap(_ sender: Any) {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login or password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is: \(user.login)")
        : showAlert(title: "Oops!", message: "Your password is: \(user.password)")
    }
    
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

