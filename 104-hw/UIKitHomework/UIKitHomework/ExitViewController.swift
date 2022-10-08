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
        super.viewDidLoad()
    }
    
    @IBAction func signOutButtonDidTap(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
