//
//  SignOutViewController.swift
//  104
//
//  Created by Роман Гиниятов on 07.10.2022.
//

import UIKit

class SignOutViewController: UIViewController {

    @IBOutlet var labelusernamee: UILabel!
    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        labelusernamee.text = "Hello, \(UserDefaults.standard.string(forKey: "textFieldUsername")!)"

    }
    
    @IBAction func clickSignOut(_ sender: Any) {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
