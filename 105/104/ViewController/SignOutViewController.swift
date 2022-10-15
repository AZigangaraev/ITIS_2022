//
//  SignOutViewController.swift
//  104
//
//  Created by Роман Гиниятов on 07.10.2022.
//

import UIKit

class SignOutViewController: UIViewController {
    
    private lazy var buttonSignOut: UIButton = {
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 18)
        var buttonSignOutConfiguration = UIButton.Configuration.filled()
        buttonSignOutConfiguration.attributedTitle = AttributedString("Sign Out", attributes: attributes)
        buttonSignOutConfiguration.baseForegroundColor = .black
        return UIButton(configuration: buttonSignOutConfiguration, primaryAction: UIAction{
            [unowned self] _ in
            presentingViewController?.dismiss(animated: true, completion: nil)
            
            }
        )
    }()
    
    private lazy var labelUserName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 21)
        label.textAlignment = .center
        label.text = "Hello, \(UserDefaults.standard.string(forKey: "textFieldUsername")!)"
        return label
    }()

  
    override func viewDidLoad() {
    
        super.viewDidLoad()
        setSubviews(labelUserName, buttonSignOut)
        setConstraint()
        
    }
    
    private func  setSubviews(_ subviews : UIView...){
        subviews.forEach({view.addSubview($0)})
    }
    
    private func setConstraint(){
        labelUserName.translatesAutoresizingMaskIntoConstraints = false
         
        NSLayoutConstraint.activate([
            labelUserName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            labelUserName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            labelUserName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ])
        
        buttonSignOut.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonSignOut.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonSignOut.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}
