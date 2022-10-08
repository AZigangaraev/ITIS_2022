//
//  FirstViewController.swift
//  Homework4
//
//  Created by Лада on 02.10.2022.
//

import UIKit

class FirstViewController: UIViewController {
    var name: String = "First vc"
    
    
    @IBOutlet weak var HelloName1: UILabel!
    @IBOutlet private var browseCatalogButton: UIButton!
    @IBOutlet private var animalImagesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        tabBarItem.badgeColor = .white
        HelloName1.backgroundColor = .white
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Image-1.jpeg")!)
        HelloName1.text = "Hello, \(UserDefaults.standard.string(forKey: "name") ?? "")!"
        buttom1()
    }
    
    func buttom1() {
        browseCatalogButton.tintColor = .black
        browseCatalogButton.backgroundColor = .white
        browseCatalogButton.setTitle("Browse", for: .normal)
        animalImagesButton.tintColor = .black
        animalImagesButton.backgroundColor = .white
        animalImagesButton.setTitle("Image", for: .normal)
    }
    
    @IBAction func animalImagesButtoDidTab() {
        let animalImageVC = storyboard?.instantiateViewController(withIdentifier: "AnimalImagesViewController")
        animalImageVC?.modalPresentationStyle = .fullScreen
        present(animalImageVC!, animated: true)
    }

    @IBAction func browseCatalogDidTab() {
        let browseCatalogVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "BrowseCatalogViewController")
        
        navigationController?.pushViewController(browseCatalogVC, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}
