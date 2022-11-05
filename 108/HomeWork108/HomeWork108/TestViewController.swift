//
//  TestViewController.swift
//  HomeWork108
//
//  Created by Илья Казначеев on 02.11.2022.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let imageUrlString = "https://www.bmw.ru/content/dam/bmw/common/all-models/m-series/m8-coupe/2022/onepager/bmw-m8-coupe-onepager-sp-desktop.jpg.asset.1658234452853.jpg"
        let imageUrl:URL = URL(string: imageUrlString)!
        
        // Start background thread so that image loading does not make app unresponsive
         DispatchQueue.global(qos: .userInitiated).async {
            
            let imageData:NSData = NSData(contentsOf: imageUrl)!
            let imageView = UIImageView(frame: CGRect(x:0, y:0, width:200, height:200))
            imageView.center = self.view.center
            
            // When from background thread, UI needs to be updated on main_queue
           DispatchQueue.main.async {
                let image = UIImage(data: imageData as Data)
                imageView.image = image
               imageView.contentMode = UIView.ContentMode.scaleAspectFit
                self.view.addSubview(imageView)
            }
        }
    }

}
