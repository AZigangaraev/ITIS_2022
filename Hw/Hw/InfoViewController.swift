//
//  InfoViewController.swift
//  Hw
//
//  Created by Максим Тарасов on 07.10.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var count = (navigationController?.viewControllers.count ?? 0) + 1
        infoLabel.text = "Catalog, Page: \(count)"
        
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(infoLabel)
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: infoLabel, attribute: .centerY,
                               relatedBy: .equal, toItem: view,
                               attribute: .centerY, multiplier: 1,
                               constant: 0),
            NSLayoutConstraint(item: infoLabel, attribute: .centerX,
                               relatedBy: .equal, toItem: view,
                               attribute: .centerX, multiplier: 1,
                               constant: 0),
            ])
    }
    
}
