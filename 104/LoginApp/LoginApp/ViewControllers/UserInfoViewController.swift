//
//  UserInfoViewController.swift
//  LoginApp_SwiftBook
//
//  Created by Сергей Бабич on 18.07.2022.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var photoImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    @IBOutlet var exitButton: UIButton!

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer()
        photoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        jobLabel.text = user.person.status.rawValue
        jobTitleLabel.text = user.person.optionalInfo
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? UserResumeViewController else { return }
        imageVC.user = user
    }

    @IBAction func exitDidTap(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }

}
