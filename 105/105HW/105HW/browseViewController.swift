//
//  browseViewController.swift
//  105HW
//
//  Created by Карина Хайрулина on 13.10.2022.
//

import UIKit

class browseViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = navigationController?.viewControllers.count ?? 0
        label.text = "Page: \(value - 1)"
        setupConstrains()
        
    }
    @IBAction func button(_ sender: Any) {
        let browseViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "browseViewController")
                navigationController?.pushViewController(browseViewController, animated: true)
    }
    private func setupConstrains() {
        let stackView = UIStackView(
            arrangedSubviews: [label, buttonOutlet]
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

