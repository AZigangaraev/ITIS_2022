//
//  BrowsCatalogViewControler.swift
//  104
//
//  Created by Роман Гиниятов on 07.10.2022.
//

import UIKit

class BrowsCatalogViewControler: UIViewController {
    
    private lazy var labelBrowseCatalog: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 21)
        label.textAlignment = .center
        label.text = "Page = \((navigationController?.viewControllers.count ?? 0) - 1)"
        return label
    }()
    
    private lazy var buttonBrowseCatalogClick: UIButton = {
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 18)
        var buttonBrowseCatalogConfiguration = UIButton.Configuration.filled()
        buttonBrowseCatalogConfiguration.attributedTitle = AttributedString("Browse Catalog", attributes: attributes)
        buttonBrowseCatalogConfiguration.baseForegroundColor = .black
        return UIButton(configuration: buttonBrowseCatalogConfiguration, primaryAction: UIAction{
            [unowned self] _ in
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BrowseCatalogViewControler")
            navigationController?.pushViewController(vc, animated: true)
            
            }
        )
    }()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem?.tintColor = .white
        setSubviews(labelBrowseCatalog, buttonBrowseCatalogClick)
        setConstraints()
    }
    
    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
      
    }
    
    private func setConstraints(){
        labelBrowseCatalog.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelBrowseCatalog.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            labelBrowseCatalog.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            labelBrowseCatalog.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ])
        
        buttonBrowseCatalogClick.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonBrowseCatalogClick.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonBrowseCatalogClick.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
   
   
}
