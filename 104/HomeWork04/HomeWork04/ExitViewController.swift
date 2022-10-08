//
//  ExitViewController.swift
//  HomeWork04
//
//  Created by Радмир Фазлыев on 08.10.2022.
//

import UIKit

class ExitViewController: UIViewController {

    var username = ""
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var SignOutButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Hello, \(username)"
    }
    
    @IBAction func signOutButtonDidTap(_ sender: Any) {
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController else { return }
        viewController.modalPresentationStyle = .fullScreen
    
        dismiss(animated: true)
    }
}
