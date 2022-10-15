//
//  AnimalViewController.swift
//  104
//
//  Created by Роман Гиниятов on 08.10.2022.
//

import UIKit

class AnimalViewController: UIViewController {
    
    private lazy var labelAnimal: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 21)
        label.textAlignment = .center
        label.text = "Image Animal"
        return label
    }()
    
    private lazy var imageAnimal: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "photo2.jpeg")
        return imageView
    }()
    
    private lazy var buttonAnimalDismis: UIButton = {
        var attributes = AttributeContainer()
        attributes.font = UIFont.boldSystemFont(ofSize: 13)
        var buttonAnimalConfiguration = UIButton.Configuration.filled()
        buttonAnimalConfiguration.attributedTitle = AttributedString("Exit", attributes: attributes)
        buttonAnimalConfiguration.baseForegroundColor = .black
        return UIButton(configuration: buttonAnimalConfiguration, primaryAction: UIAction{
            [unowned self] _ in
             dismiss(animated: true)
            
            }
        )
    }()

   
    override func viewDidLoad() {
        super.viewDidLoad()
        setSubviews(labelAnimal, imageAnimal,buttonAnimalDismis)
        setConstraints()
    }
    
    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
      
    }
    
    
    private func setConstraints(){
        labelAnimal.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            labelAnimal.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            labelAnimal.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        buttonAnimalDismis.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonAnimalDismis.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            buttonAnimalDismis.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16)
        ])
        
        imageAnimal.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageAnimal.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageAnimal.centerYAnchor.constraint(equalTo: view.centerYAnchor),
           
        ])
        
    }
    
    

}
