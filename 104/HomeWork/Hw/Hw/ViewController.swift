//
//  ViewController.swift
//  Hw
//
//  Created by Максим Тарасов on 07.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func logInButton(_ sender: Any) {
        if loginTextField.text == "Maksim" && passwordTextField.text == "Qwerty123"{
            let tabVC = (storyboard?.instantiateViewController(withIdentifier: "TabBarViewController"))!
            navigationController?.present(tabVC, animated: true)
            //navigationController?.pushViewController(tabVC, animated: true)
        }else{
            let alert = UIAlertController(title: "Error", message: "Wrong username or password.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("The \"Error\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }

}
