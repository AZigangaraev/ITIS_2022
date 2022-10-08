//
//  BrowseCatalogViewController.swift
//  LoginApp
//
//  Created by Сергей Бабич on 08.10.2022.
//

import UIKit

class BrowseCatalogViewController: UIViewController {
    private lazy var pageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24)
        label.textAlignment = .center
        label.text = "Catalog, Page: \((navigationController?.viewControllers.count ?? 1) - 1)"
        return label
    }()

    private lazy var browseButton: UIButton = {
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 15)

        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = .systemMint
        buttonConfiguration.attributedTitle = AttributedString("Browse catalog", attributes: attributes)
        return UIButton(configuration: buttonConfiguration, primaryAction: UIAction { [unowned self] _ in
            let anotherVC: BrowseCatalogViewController = UIStoryboard(name: "Main", bundle: nil)
                .instantiateViewController(identifier: "browseVC")
//            anotherVC.title = "Catalog, Page: \(navigationController?.viewControllers.count ?? 1)"
            navigationController?.pushViewController(anotherVC, animated: true)
        })
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Back", style: .plain, target: self,
            action: #selector(closeTap)
        )

        setSubviews(pageLabel, browseButton)
        setConstraints()
    }

    @objc private func closeTap() {
        if navigationController?.viewControllers.count ?? 1 == 1 {
            presentingViewController?.dismiss(animated: true)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }

    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
    }

    private func setConstraints() {
        pageLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            pageLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            pageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        browseButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            browseButton.topAnchor.constraint(equalTo: pageLabel.bottomAnchor, constant: 20),
            browseButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
}
