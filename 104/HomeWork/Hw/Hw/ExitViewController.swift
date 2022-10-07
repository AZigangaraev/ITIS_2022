//
//  ExitViewController.swift
//  Hw
//
//  Created by Максим Тарасов on 07.10.2022.
//

import UIKit

class ExitViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        nameLabel.text = "Hello, Maksim."
        super.viewDidLoad()

    }

    @IBAction func signOutButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
