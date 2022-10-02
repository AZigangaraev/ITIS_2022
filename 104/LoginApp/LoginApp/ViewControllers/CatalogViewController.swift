//
//  CatalogViewController.swift
//  LoginApp_SwiftBook
//
//  Created by Сергей Бабич on 01.10.2022.
//

import UIKit

var pages = 0

class CatalogViewController: UIViewController {

    @IBOutlet private var browseButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Back", style: .plain, target: self,
            action: #selector(closeTap)
        )
    }

    @objc private func closeTap() {
        if navigationController?.viewControllers.count ?? 1 == 1 {
            presentingViewController?.dismiss(animated: true)
            pages -= 1
        } else {
            navigationController?.popViewController(animated: true)
            pages = 0
        }
    }

    @IBAction private func browseButtonTap() {
        pages += 1
        let anotherVC: CatalogViewController = UIStoryboard(name: "Main", bundle: nil)
            .instantiateViewController(identifier: "CatalogViewController")
        anotherVC.title = "Catalog, Page: \(pages)"
        navigationController?.pushViewController(anotherVC, animated: true)
    }

}
