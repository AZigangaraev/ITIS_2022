//
//  browseViewController.swift
//  104HW
//
//  Created by Карина Хайрулина on 08.10.2022.
//

import UIKit

class browseViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let value = navigationController?.viewControllers.count ?? 0
        label.text = "Page: \(value - 1)"
        
    }
    
    
    @IBAction func button(_ sender: Any) {
        let browseViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "browseViewController")
                navigationController?.pushViewController(browseViewController, animated: true)
    }
}
