//
//  catalogViewController.swift
//  104HW
//
//  Created by Карина Хайрулина on 08.10.2022.
//

import UIKit

class catalogViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    
    var text: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "Hello, \(UserDefaults.standard.string(forKey: "user") ?? " ")"
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
}
