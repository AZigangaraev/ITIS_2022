//
//  AnimalImageViewController.swift
//  Homework4
//
//  Created by elya on 08.10.2022.
//

import UIKit

class AnimalImageViewController: UIViewController {
    
    @IBOutlet private var image: UIImageView!
    @IBOutlet private var label: UILabel!
    @IBOutlet private var closeButton: UIButton!
    
    @IBAction func closeDidTap(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
}
