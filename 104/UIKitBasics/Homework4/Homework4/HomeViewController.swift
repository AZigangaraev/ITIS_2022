//
//  HomeViewController.swift
//  Homework4
//
//  Created by elya on 08.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
//    var name = ""
    
    @IBOutlet private var hello: UILabel!
    @IBOutlet private var browseCatalog: UIButton!
    @IBOutlet private var animalImages: UIButton!
    
    @IBAction func browseCatalogDidTap(_ sender: Any) {
        print("browseCatalogDidTap")
        guard let catalogVC = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(identifier: "CatalogViewController") as? CatalogViewController else { return }
        
        navigationController?.pushViewController(catalogVC, animated: true)
    }
    
    @IBAction func AnimalImagesDidTap(_ sender: Any) {
        let AnimalVC: UIViewController = UIStoryboard(name: "Main", bundle: nil)
             .instantiateViewController(identifier: "AnimalImageViewController")
         
        AnimalVC.modalPresentationStyle = .fullScreen
         present(AnimalVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        hello.text = "Hello, " + name
    }
    
}

class SignOutViewController: UIViewController {
//    var name = ""
    
    @IBOutlet private var hello: UILabel!
    @IBOutlet private var signOutButton: UIButton!
    
    @IBAction func signOutDidTap(_ sender: Any) {
        presentingViewController?.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        hello.text = "Hello, " + name
    }
}
