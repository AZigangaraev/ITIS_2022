//
//  HomeViewController.swift
//  Hw
//
//  Created by Максим Тарасов on 07.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

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
