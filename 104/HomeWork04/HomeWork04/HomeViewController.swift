//
//  HomeViewController.swift
//  HomeWork04
//
//  Created by Илья Казначеев on 01.10.2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var browseButton: UIButton!
    @IBOutlet weak var animalImagesButton: UIButton!
    @IBOutlet weak var helloLabel: UILabel!
    
    var DataBase = DB()
    override func viewDidLoad() {
        super.viewDidLoad()

        helloLabel.text = "Hello, \(DataBase.getUsername())"
        
        browseButton.layer.cornerRadius = 30
        browseButton.layer.borderWidth = 5
        
        
        animalImagesButton.layer.cornerRadius = 30
        animalImagesButton.layer.borderWidth = 5
        
    }
    
    @IBAction func browseCatalogWasTapped(_ sender: Any) {
        
        let browseViewController: BrowseViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(identifier: "BrowseViewController")
        
        navigationController?.pushViewController(browseViewController, animated: true)
        
    }
    
    @IBAction func animalButtonWasTapped(_ sender: Any) {
        
        let animalImageViewController: AnimalImageViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(identifier: "AnimalImageViewController")
        
        navigationController?.pushViewController(animalImageViewController, animated: true)
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)


    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)


    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)


    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)


    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()


    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()


    }

    override func viewSafeAreaInsetsDidChange() {
        super.viewSafeAreaInsetsDidChange()


    }



}
