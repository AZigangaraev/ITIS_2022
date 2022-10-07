//
//  AnimalViewController.swift
//  hw4
//
//  Created by Илья Гребеньков on 07.10.2022.
//

import UIKit

class AnimalViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    
    let images = [
        "85120553.jpg",
        "hippopotamus-extreme-animals-social-1642555668.jpg",
        "wild_and_wonderful_asian_animals_header_1140.jpg",
        "Wildlife_at_Maasai_Mara_(Lion).jpg"
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.image = UIImage(named: images.shuffled().randomElement()!)
        // Do any additional setup after loading the view.
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
