//
//  CarCell.swift
//  HomeWork106
//
//  Created by Илья Казначеев on 19.10.2022.
//

import UIKit

class CarCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setup()
    }
    
    private let nameLabel: UILabel = .init()
    private let weightLabel: UILabel = .init()
    private let priceLabel: UILabel = .init()
    private let horsePowerLabel: UILabel = .init()
    private let fuelСonsumptionLabel: UILabel = .init()
    private let carImageView: UIImageView = .init()
    
    func set(car: Car){
        nameLabel.text = car.name
        weightLabel.text = "Weight: \(car.weight)"
        priceLabel.text = "Price: \(car.price) ₽"
        horsePowerLabel.text = "Horse power: \(car.horsePower)"
        fuelСonsumptionLabel.text = "Fuel Сonsumption: \(car.fuelСonsumption)"
        carImageView.image = DataBase.chooseImageForCar(car: car)
    }
    
    private func setup() {
        self.backgroundColor = .clear
        nameLabel.font = .monospacedSystemFont(ofSize: 20, weight: .bold)
        nameLabel.textColor = .white
        weightLabel.font = .boldSystemFont(ofSize: 12)
        weightLabel.textColor = .white
        priceLabel.font = .boldSystemFont(ofSize: 12)
        priceLabel.textColor = .white
        horsePowerLabel.font = .boldSystemFont(ofSize: 12)
        horsePowerLabel.textColor = .white
        fuelСonsumptionLabel.font = .boldSystemFont(ofSize: 12)
        fuelСonsumptionLabel.textColor = .white
        
        let firstStack = UIStackView(arrangedSubviews: [carImageView, nameLabel])
        let secondStack = UIStackView(arrangedSubviews: [weightLabel, priceLabel])
        let thirdStack = UIStackView(arrangedSubviews: [horsePowerLabel, fuelСonsumptionLabel])
        
        firstStack.spacing = 5
        firstStack.alignment = .leading
        firstStack.distribution = .equalCentering
        secondStack.spacing = 40
        secondStack.alignment = .center
        secondStack.distribution = .equalSpacing
        thirdStack.spacing = 40
        thirdStack.alignment = .center
        thirdStack.distribution = .equalSpacing
        
        let mainStack = UIStackView(arrangedSubviews: [firstStack, secondStack, thirdStack])
        mainStack.axis = .vertical
        mainStack.alignment = .leading
        mainStack.spacing = 30
        mainStack.distribution = .fill
        
        contentView.addSubview(mainStack)
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            mainStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            mainStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            mainStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            carImageView.widthAnchor.constraint(equalToConstant: 40),
            carImageView.heightAnchor.constraint(equalToConstant: 40),
            nameLabel.centerYAnchor.constraint(equalTo: carImageView.centerYAnchor),
            
        ])
    }
}
