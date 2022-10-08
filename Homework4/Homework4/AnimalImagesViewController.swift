//
//  AnimalImagesViewController.swift
//  Homework4
//
//  Created by Лада on 08.10.2022.
//

import UIKit

class AnimalImagesViewController: UIViewController {

    @IBOutlet weak var closeButtom: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        closeButtom.setTitle("Close", for: .normal)
        closeButtom.tintColor = .black
        closeButtom.backgroundColor = .white
    }

    @IBAction func closeDidTab(_ sender: Any) {
//        let tabBar = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarViewController")
//        tabBar.modalPresentationStyle = .fullScreen
//        self.present(tabBar, animated: true)
        presentingViewController?.dismiss(animated: true)
    }
}
