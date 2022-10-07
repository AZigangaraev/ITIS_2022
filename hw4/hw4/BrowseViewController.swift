//
//  BrowseViewController.swift
//  hw4
//
//  Created by Илья Гребеньков on 07.10.2022.
//

import UIKit

class BrowseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let pages = navigationController?.viewControllers.count ?? 0
        self.navigationItem.title = "Catalog, Page \(pages - 1)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func browseDidTap(_ sender: Any) {
        let browseVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseViewController")
        navigationController?.pushViewController(browseVC, animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
