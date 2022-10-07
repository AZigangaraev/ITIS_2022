//
//  ImgViewController.swift
//  Hw
//
//  Created by Максим Тарасов on 07.10.2022.
//

import UIKit

class ImgViewController: UIViewController {

    @IBOutlet weak var Img: UIImageView!
    override func viewDidLoad() {
        Img.image = UIImage(named: "macaca")
        super.viewDidLoad()
    }


}
