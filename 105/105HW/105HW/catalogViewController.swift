//
//  catalogViewController.swift
//  105HW
//
//  Created by Карина Хайрулина on 13.10.2022.
//

import UIKit

class catalogViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var catalogOutletButton: UIButton!
    @IBOutlet weak var imagesOutletButton: UIButton!
    
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "Hello, \(UserDefaults.standard.string(forKey: "user") ?? " ")"
        setupConstrains()
    }
    
    
    @IBAction func catalogButton(_ sender: Any) {
    
    let browseVC: browseViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "browseViewController") as! browseViewController
               navigationController?.pushViewController(browseVC, animated: true)
    }
    
    @IBAction func imagesButton(_ sender: Any) {
        guard let animalViewController = storyboard?.instantiateViewController(withIdentifier: "animalViewController") as? animalViewController else { return }
        animalViewController.modalPresentationStyle = .fullScreen
        present(animalViewController, animated: true)
    }
    
    private func setupConstrains() {
        let stackView = UIStackView(
            arrangedSubviews: [catalogOutletButton, imagesOutletButton]
        )
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.translatesAutoresizingMaskIntoConstraints = false
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 30),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            
            helloLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            helloLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            helloLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
}

