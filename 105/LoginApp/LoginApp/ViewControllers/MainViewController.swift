//
//  ViewController.swift
//  LoginApp
//
//  Created by Сергей Бабич on 08.10.2022.
//

import UIKit

class MainViewController: UIViewController {
    private let user = User.getUserData()

    private lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Username"
        textField.text = user.login
        return textField
    }()

    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Password"
        textField.text = "1234"
        textField.isSecureTextEntry = true
        return textField
    }()

    private lazy var logInButton: UIButton = {
        createButton(
            withTitle: "Log In",
            andColor: UIColor.systemMint,
            action: UIAction { [unowned self] _ in
                guard loginTextField.text == user.login, passwordTextField.text == user.password else {
                    showAlert(
                        title: "Invalid login or password",
                        message: "Please, enter correct login or password",
                        textField: passwordTextField
                    )
                    return
                }
                guard let tabBarVC = storyboard?.instantiateViewController(withIdentifier: "tabBarVC") as? UITabBarController else { return }
                guard let viewControllers = tabBarVC.viewControllers else { return }
                tabBarVC.modalPresentationStyle = .fullScreen
                print(viewControllers)

                viewControllers.forEach {
                    if let navVC = $0 as? UINavigationController {
                        guard let homeVC = navVC.topViewController as? HomeViewController else { return }
                        homeVC.username = user.login
                    } else if let profileVC = $0 as? ProfileViewController {
                        profileVC.username = user.login
                    }
                }
                present(tabBarVC, animated: true)
            }
        )
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray

        setSubviews(loginTextField, passwordTextField, logInButton)
        setConstraints()
    }

    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
    }

    private func setConstraints() {
        let stackViewTF = UIStackView()
        stackViewTF.axis = .vertical
        stackViewTF.spacing = 20
        view.addSubview(stackViewTF)

        stackViewTF.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false

        stackViewTF.addArrangedSubview(loginTextField)
        stackViewTF.addArrangedSubview(passwordTextField)

        NSLayoutConstraint.activate([
            stackViewTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackViewTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackViewTF.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            stackViewTF.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        logInButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            logInButton.topAnchor.constraint(equalTo: stackViewTF.bottomAnchor, constant: 20),
            logInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

    }

    private func createButton(
        withTitle title: String,
        andColor color: UIColor,
        action: UIAction
    ) -> UIButton {
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 15)

        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.attributedTitle = AttributedString(title, attributes: attributes)
        buttonConfiguration.baseBackgroundColor = color
        buttonConfiguration.baseForegroundColor = .black
        return UIButton(configuration: buttonConfiguration, primaryAction: action)
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

