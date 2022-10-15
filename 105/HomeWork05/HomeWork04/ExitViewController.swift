//
//  ExitViewController.swift
//  HomeWork04
//
//  Created by Радмир Фазлыев on 08.10.2022.
//

import UIKit

class ExitViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var SignOutButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()
        greetingLabel.text = "Hello, \(UserDefaults.standard.string(forKey: "username") ?? " ")"
    }
    
    @IBAction func signOutButtonDidTap(_ sender: Any) {
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController else { return }
        viewController.modalPresentationStyle = .fullScreen
    
        dismiss(animated: true)
    }
    
    func setConstraints() {
        
        greetingLabel.translatesAutoresizingMaskIntoConstraints = false
        SignOutButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
           
            greetingLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            greetingLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            greetingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            
            SignOutButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            SignOutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
    }
}
