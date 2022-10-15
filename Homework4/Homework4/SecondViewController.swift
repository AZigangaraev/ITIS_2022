//
//  SecondViewController.swift
//  Homework4
//
//  Created by Лада on 02.10.2022.
//

import UIKit

class SecondViewController: UIViewController {
    

    @IBOutlet weak var buttom2: UIButton!
    @IBOutlet weak var HelloName: UILabel!
    
    var userName1: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstraints()
        
        title = "Exit"
        tabBarItem.badgeColor = .white
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Image-1.jpeg")!)
    
        HelloName.backgroundColor = .white
        HelloName.text = "Hello, \(UserDefaults.standard.string(forKey: "name") ?? "")!"
        butt()
    }
    func butt() {
        buttom2.setTitle("Sing out", for: .normal)
        buttom2.tintColor = .black
        buttom2.backgroundColor = .white
    }
    @IBAction func buttom2DidTab(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    
    func setConstraints() {
        HelloName.translatesAutoresizingMaskIntoConstraints = false

        HelloName.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        HelloName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        HelloName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true

        HelloName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        buttom2.translatesAutoresizingMaskIntoConstraints = false

        buttom2.topAnchor.constraint(equalTo: HelloName.topAnchor, constant: 200).isActive = true
        buttom2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        buttom2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100).isActive = true

        buttom2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }

}
