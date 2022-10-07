//
//  MainBarViewController.swift
//  104
//
//  Created by Роман Гиниятов on 07.10.2022.
//

import UIKit

class MainBarViewController: UIViewController {

    @IBOutlet var labelUserName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelUserName.text = "Hello, \( UserDefaults.standard.string(forKey: "textFieldUsername")!)"
       
    }
    
    
    
    @IBAction func clickBrowseCatalog(_ sender: Any) {
        let vc: BrowsCatalogViewControler = UIStoryboard(name: "Main", bundle: nil)
              .instantiateViewController(identifier: "BrowseCatalogViewControler")
        navigationController?.pushViewController(vc, animated: true)
        
      
        
    }
    

    @IBAction func clickAnimal(_ sender: Any) {
        let vcAmimal: AnimalViewController = UIStoryboard(name: "Main", bundle: nil)
              .instantiateViewController(identifier: "AnimalVC")
        navigationController?.pushViewController(vcAmimal, animated: true)
    }

}
