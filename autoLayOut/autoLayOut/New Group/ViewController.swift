import UIKit

class ViewController: UIViewController {
    
    private lazy var loginTF: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Login"
        return textField
    }()

    private lazy var passwordTF: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Password"
        textField.isSecureTextEntry = true
        return textField
    }()

    private lazy var logInButton: UIButton = {
        var attributes = AttributeContainer()
        attributes.font = UIFont.systemFont(ofSize: 15)

        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.attributedTitle = AttributedString("LogIn", attributes: attributes)
        buttonConfiguration.baseBackgroundColor = .red
        return UIButton(
            configuration: buttonConfiguration,
            primaryAction: UIAction { [self] _ in
                guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondView else { return }
                secondVC.modalPresentationStyle = .fullScreen
                present(secondVC, animated: true)
            })
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setSubviews(loginTF, passwordTF, logInButton)
        setConstraint()
    }

    private func setSubviews(_ subview: UIView...) {
        subview.forEach { view.addSubview($0) }
    }

    private func setConstraint() {
    
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20

        view.addSubview(stackView)

        stackView.translatesAutoresizingMaskIntoConstraints = false
        loginTF.translatesAutoresizingMaskIntoConstraints = false
        passwordTF.translatesAutoresizingMaskIntoConstraints = false

        stackView.addArrangedSubview(loginTF)
        stackView.addArrangedSubview(passwordTF)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])


        logInButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            logInButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30),
            logInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0)
        ])
    }


}

