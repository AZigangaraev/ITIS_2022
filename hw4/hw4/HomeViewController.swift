//
//  HomeViewController.swift
//  hw4
//
//  Created by Илья Гребеньков on 07.10.2022.
//

import UIKit

class HomeViewController: UIViewController {

   
    @IBOutlet weak var navItem: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navItem.title = "Hello, \(UserDefaults.standard.string(forKey: "name") ?? "ты как это сдлеал")"

        // Do any additional setup after loading the view.
    }
    

    @IBAction func animalDidTap(_ sender: Any) {
        let animalVC = storyboard?.instantiateViewController(withIdentifier: "AnimalViewController")
        present(animalVC!, animated: true)
    }
    @IBAction func browseDidTap(_ sender: Any) {
        let anotherVC: BrowseViewController = UIStoryboard(name: "Main", bundle: nil)
              .instantiateViewController(identifier: "BrowseViewController")
        navigationController?.pushViewController(anotherVC, animated: true)
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
