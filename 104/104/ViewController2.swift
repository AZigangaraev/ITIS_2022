//
//  ViewController.swift
//  104
//
//  Created by Роман Гиниятов on 07.10.2022.
//

import UIKit

class ViewController2: UIViewController {

   
    @IBOutlet var textFieldUsername: UITextField!
    @IBOutlet var textFieldPassword: UITextField!
    @IBOutlet var submitbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    @IBAction func clickSubmitButton(_ sender: Any) {
        
        if (((textFieldUsername.text ?? "").isEmpty) || ((textFieldPassword.text ?? "").isEmpty)) {
            createAlert(title: "Warning", description: "Wrong username or password")
        
        } else {
            UserDefaults.standard.set(textFieldUsername.text, forKey: "textFieldUsername")
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "TabbarViewController") else { return }
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
            
           
            
            
        }
        UserDefaults.standard.set(0, forKey: "value")

        
    }
    
    func createAlert(title: String?, description: String?) {

            let alertController = UIAlertController(
                title: title, message: description, preferredStyle: .alert
            )
        
            alertController.addAction(
                UIAlertAction(title: "OK", style: .default, handler: nil)
            )
        
            present(alertController, animated: true, completion: nil)

        }
}

