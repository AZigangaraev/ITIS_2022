//
//  TabBarController.swift
//  LoginApp_SwiftBook
//
//  Created by Сергей Бабич on 18.07.2022.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
    }
}
