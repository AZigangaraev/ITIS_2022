//
//  HomeViewController.swift
//  Hw
//
//  Created by Максим Тарасов on 07.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var animalImageButton: UIButton!
    @IBOutlet weak var browseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalImageButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animalImageButton)
        browseButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(browseButton)
        
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: animalImageButton, attribute: .centerY,
                               relatedBy: .equal, toItem: view,
                               attribute: .centerY, multiplier: 1,
                               constant: 200),
            NSLayoutConstraint(item: animalImageButton, attribute: .centerX,
                               relatedBy: .equal, toItem: view,
                               attribute: .centerX, multiplier: 1,
                               constant: 0),
            NSLayoutConstraint(item: browseButton, attribute: .centerY,
                               relatedBy: .equal, toItem: view,
                               attribute: .centerY, multiplier: 1,
                               constant: -200),
            NSLayoutConstraint(item: browseButton, attribute: .centerX,
                               relatedBy: .equal, toItem: view,
                               attribute: .centerX, multiplier: 1,
                               constant: 0),
            ])
    }

    @IBAction func browseButton(_ sender: Any) {
        let infoVC = (storyboard?.instantiateViewController(withIdentifier: "InfoViewController"))!
        navigationController?.pushViewController(infoVC, animated: true)
    }
    
    @IBAction func animalButton(_ sender: Any) {
        let imgVC = (storyboard?.instantiateViewController(withIdentifier: "ImgViewController"))!
        present(imgVC, animated: true)
    }
}
