//
//  signOutViewController.swift
//  104HW
//
//  Created by Карина Хайрулина on 08.10.2022.
//

import UIKit

class signOutViewController: UIViewController {

    @IBOutlet weak var labelSignOut: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSignOut.text = "Hello, \(UserDefaults.standard.string(forKey: "user") ?? " ")"
    }
    
    @IBAction func signOut(_ sender: Any) {
        guard let ViewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? UIViewController else { return }
                ViewController.modalPresentationStyle = .fullScreen
                dismiss(animated: true)
    }
}
