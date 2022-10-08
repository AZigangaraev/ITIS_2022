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

}
