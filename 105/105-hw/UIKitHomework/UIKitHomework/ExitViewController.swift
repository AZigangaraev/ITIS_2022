//
//  ExitViewController.swift
//  UIKitHomework
//
//  Created by Artyom Mitrofanov on 07.10.2022.
//

import UIKit

class ExitViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var signOutButton: UIButton!
    
    override func viewDidLoad() {
        greetingLabel.text = "Hello, \(UserDefaults.standard.string(forKey: "Username")!)"
        greetingLabel.font = UIFont.systemFont(ofSize: 30)
        super.viewDidLoad()
        setConstrains()
    }
    
    private func setConstrains() {
        greetingLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            greetingLabel.centerXAnchor.constraint(equalTo:
                                                    view.centerXAnchor,
                                                   constant: 0),
            greetingLabel.centerYAnchor.constraint(equalTo:
                                                    view.centerYAnchor,
                                                   constant: -200),
            greetingLabel.trailingAnchor.constraint(equalTo:
                                                    view.trailingAnchor,
                                                   constant: 0),
            greetingLabel.leadingAnchor.constraint(equalTo:
                                                    view.leadingAnchor,
                                                   constant: 0)
        ])
        
        signOutButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signOutButton.centerXAnchor.constraint(equalTo:
                                                    view.centerXAnchor,
                                                   constant: 0),
            signOutButton.centerYAnchor.constraint(equalTo:
                                                    view.centerYAnchor,
                                                   constant: -50),
            signOutButton.trailingAnchor.constraint(equalTo:
                                                    view.trailingAnchor,
                                                   constant: -50),
            signOutButton.leadingAnchor.constraint(equalTo:
                                                    view.leadingAnchor,
                                                   constant: 50),
            signOutButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @IBAction func signOutButtonDidTap(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
