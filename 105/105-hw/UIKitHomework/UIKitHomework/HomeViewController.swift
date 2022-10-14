//
//  HomeViewController.swift
//  UIKitHomework
//
//  Created by Artyom Mitrofanov on 07.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var browseCatalogButton: UIButton!
    @IBOutlet var animalImageButton: UIButton!
    @IBOutlet var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        greetingLabel.text = "Hello, \(UserDefaults.standard.string(forKey: "Username")!)"
        greetingLabel.font = UIFont.systemFont(ofSize: 30)
        super.viewDidLoad()
        setConstraints()
    }
    
    private func setConstraints() {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        browseCatalogButton.translatesAutoresizingMaskIntoConstraints = false
        animalImageButton.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(browseCatalogButton)
        stackView.addArrangedSubview(animalImageButton)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo:
                                                view.centerYAnchor,
                                               constant: -75),
            stackView.centerXAnchor.constraint(equalTo:
                                                view.centerXAnchor,
                                               constant: 0),
            stackView.leadingAnchor.constraint(equalTo:
                                                view.leadingAnchor,
                                               constant: 100),
            stackView.trailingAnchor.constraint(equalTo:
                                                    view.trailingAnchor,
                                                constant: -100),
        ])
        
        NSLayoutConstraint.activate([
            browseCatalogButton.heightAnchor.constraint(equalToConstant: 60),
            animalImageButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        greetingLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            greetingLabel.centerYAnchor.constraint(equalTo:
                                                    view.centerYAnchor,
                                                   constant: -270),
            greetingLabel.centerXAnchor.constraint(equalTo:
                                                    view.centerXAnchor,
                                                   constant: 0),
            greetingLabel.leadingAnchor.constraint(equalTo:
                                                    view.leadingAnchor,
                                                   constant: 0),
            greetingLabel.trailingAnchor.constraint(equalTo:
                                                        view.trailingAnchor,
                                                    constant: 0),
        ])
    }

    @IBAction func browseCatalogDidTap(_ sender: UIButton) {
        guard let browseCatalogVC: BrowseCatalogViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseCatalogViewController") as? BrowseCatalogViewController else { return }
        navigationController?.pushViewController(browseCatalogVC, animated: true)
    }
}
