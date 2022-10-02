//
//  UserResumeViewController.swift
//  LoginApp_SwiftBook
//
//  Created by Сергей Бабич on 20.07.2022.
//

import UIKit

class UserResumeViewController: UIViewController {
    @IBOutlet weak var userResumeTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = .white
        view.addVerticalGradientLayer()
        userResumeTextView.backgroundColor = .clear
        userResumeTextView.textColor = .white
        title = "\(user.person.fullName) Resume"
    }
}
