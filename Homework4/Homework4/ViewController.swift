//
//  ViewController.swift
//  Homework4
//
//  Created by Лада on 01.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Image.jpeg")!)

    }

    @IBOutlet private var loginField: UITextField!
    @IBOutlet private var passwordField: UITextField!
    @IBOutlet private var submitButton: UIButton!
    
    
    @IBAction private func submitTap() {
        
        UserDefaults.standard.set(loginField.text, forKey: "name")
        
        if loginField.text == "" || passwordField.text == "" {
            // 1. Create Alert
            let alert = UIAlertController(title: "Wronge username or password",
                                          message: "Please change",
                                          preferredStyle: .alert)
            // 2. Creeate Actions
            alert.addAction(UIAlertAction(title: "Update",
                                          style: .default,
                                          handler: { _ in print("OK tap") }))
            // 3. Snow
            present(alert, animated: true, completion: nil)
            
            
        } else {
            didTabButtom()
        }
      }
    
    @objc func didTabButtom() {
        UserDefaults.standard.set(loginField.text, forKey: "name")
//        UserDefaults.standard.set(loginField.text, forKey: "name")
        let tabBar = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarViewController")
        tabBar.modalPresentationStyle = .fullScreen
        self.present(tabBar, animated: true)
        
        
//        let tabBar = UITabBarController()
//        let firstVC = UINavigationController(rootViewController: FirstViewController())
//        let secondVC = UINavigationController(rootViewController: SecondViewController())
        
//        let firstVC = FirstViewController()
//        let secondVC = SecondViewController()
//
//        firstVC.title = "Home"
//        secondVC.title = "Exit"
//        tabBarItem.badgeColor = .white
//        secondVC.userName1 = loginField.text
//        tabBar.setViewControllers([firstVC, secondVC], animated: true)
    
//        tabBar.modalPresentationStyle = .fullScreen
//        present(tabBar, animated: true)
        //            let storybord = UIStoryboard(name: "Main", bundle: nil)
        //            let tabBar = storybord.instantiateViewController(withIdentifier: "TabBarViewController")
        //            navigationController?.pushViewController(tabBar, animated: true)
        //            submitButton.addTarget(self, action: #selector(didTabButtom), for: .touchUpInside)
    }
}
