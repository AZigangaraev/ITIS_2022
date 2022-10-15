//
//  MainBarViewController.swift
//  104
//
//  Created by Роман Гиниятов on 07.10.2022.
//

import UIKit

class MainBarViewController: UIViewController {

    private lazy var labelUserName: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 21)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var buttonBrowseCatalog: UIButton = {
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 18)
        var buttonBrowseCatalogConfiguration = UIButton.Configuration.filled()
        buttonBrowseCatalogConfiguration.attributedTitle = AttributedString("Browse Catalog", attributes: attributes)
        buttonBrowseCatalogConfiguration.baseForegroundColor = .black
        return UIButton(configuration: buttonBrowseCatalogConfiguration, primaryAction: UIAction{
            [unowned self] _ in
            guard let VC = storyboard?.instantiateViewController(withIdentifier: "BrowseCatalogViewControler") as? BrowsCatalogViewControler else { return }

            navigationController?.pushViewController(VC, animated: true)
        })
    }()
    
    private lazy var buttonAnimalImage: UIButton = {
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 18)
        var buttonBrowseCatalogConfiguration = UIButton.Configuration.filled()
        buttonBrowseCatalogConfiguration.attributedTitle = AttributedString("Animal Images", attributes: attributes)
        buttonBrowseCatalogConfiguration.baseForegroundColor = .black
        return UIButton(configuration: buttonBrowseCatalogConfiguration, primaryAction: UIAction{
            [unowned self] _ in
                guard let vc = storyboard?.instantiateViewController(withIdentifier: "AnimalVC") else { return }
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true)
            
            }
        )
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubviews(labelUserName, buttonAnimalImage, buttonBrowseCatalog)
        setConstraints()
        labelUserName.text = "Hello, \( UserDefaults.standard.string(forKey: "textFieldUsername")!)"
       
    }
    
    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
    }
    
    private func setConstraints(){
        labelUserName.translatesAutoresizingMaskIntoConstraints = false
         
        NSLayoutConstraint.activate([
            labelUserName.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            labelUserName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            labelUserName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ])
        
        buttonBrowseCatalog.translatesAutoresizingMaskIntoConstraints = false
        buttonAnimalImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonBrowseCatalog.topAnchor.constraint(equalTo: labelUserName.bottomAnchor, constant: 32),
            buttonBrowseCatalog.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            buttonAnimalImage.topAnchor.constraint(equalTo: buttonBrowseCatalog.bottomAnchor, constant: 16),
            buttonAnimalImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16)
        ])
    }
    
    
   
    

   

}
