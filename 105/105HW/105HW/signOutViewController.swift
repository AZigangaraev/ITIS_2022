//
//  signOutViewController.swift
//  105HW
//
//  Created by Карина Хайрулина on 13.10.2022.
//

import UIKit

class signOutViewController: UIViewController {

    @IBOutlet weak var signOutOutlet: UIButton!
    @IBOutlet weak var labelSignOut: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSignOut.text = "Hello, \(UserDefaults.standard.string(forKey: "user") ?? " ")"
        setupConstrains()
    }
    
    @IBAction func signOut(_ sender: Any) {
        guard let ViewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? UIViewController else { return }
                ViewController.modalPresentationStyle = .fullScreen
                dismiss(animated: true)
    }
    private func setupConstrains() {
        let stackView = UIStackView(
            arrangedSubviews: [labelSignOut, signOutOutlet]
        )

        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)


        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
        ])
    }
}
