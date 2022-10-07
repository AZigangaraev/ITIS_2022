//
//  BrowsCatalogViewControler.swift
//  104
//
//  Created by Роман Гиниятов on 07.10.2022.
//

import UIKit

class BrowsCatalogViewControler: UIViewController {
    
    @IBOutlet var labelBrowseCatalog: UILabel!
    override func viewDidLoad() {
        let value = navigationController?.viewControllers.count ?? 0
        labelBrowseCatalog.text = "Page = \(value - 1)"
        super.viewDidLoad()
        navigationItem.backBarButtonItem?.tintColor = .white
    }
    
    @IBAction func clickBrowse(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseCatalogViewControler")
        navigationController?.pushViewController(vc, animated: true)
    }
   
}
