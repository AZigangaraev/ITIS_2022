//
//  BrowseViewController.swift
//  HomeWork04
//
//  Created by Илья Казначеев on 02.10.2022.
//

import UIKit

class BrowseViewController: UIViewController {

    @IBOutlet weak var browseButton: UIButton!

    @IBOutlet weak var catalogLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var countOfPage = navigationController?.viewControllers.count ?? 0

        catalogLabel.text = "Catalog, Page: \(countOfPage - 1)"
        
        browseButton.layer.cornerRadius = 30
        browseButton.layer.borderWidth = 5
    }
    

    @IBAction func browseWasTapped(_ sender: Any) {
        let browseViewController: BrowseViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(identifier: "BrowseViewController")
        
        navigationController?.pushViewController(browseViewController, animated: true)
    }


}
