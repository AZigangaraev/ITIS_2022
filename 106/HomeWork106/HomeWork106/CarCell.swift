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
        nameLabel.text = car.company + " " + car.model
        weightLabel.text = "Weight: \(car.weight)"
        priceLabel.text = "Price: \(car.price) ₽"
        horsePowerLabel.text = "Horse power: \(car.horsePower)"
        fuelСonsumptionLabel.text = "Fuel Сonsumption: \(car.fuelСonsumption)"
        carImageView.image = DataBase.chooseImageForCar(car: car)
    }
    
    private func setup() {
        nameLabel.font = .boldSystemFont(ofSize: 20)
        nameLabel.textColor = .black
        weightLabel.font = .systemFont(ofSize: 12)
        weightLabel.textColor = .black
        priceLabel.font = .systemFont(ofSize: 12)
        priceLabel.textColor = .black
        horsePowerLabel.font = .systemFont(ofSize: 12)
        horsePowerLabel.textColor = .black
        fuelСonsumptionLabel.font = .systemFont(ofSize: 12)
        fuelСonsumptionLabel.textColor = .black
        
        let firstStack = UIStackView(arrangedSubviews: [carImageView, nameLabel])
        let secondStack = UIStackView(arrangedSubviews: [weightLabel, priceLabel])
        secondStack.axis = .vertical
        let thirdStack = UIStackView(arrangedSubviews: [horsePowerLabel, fuelСonsumptionLabel])
        thirdStack.axis = .vertical
        
        firstStack.spacing = 10
        firstStack.alignment = .leading
        firstStack.distribution = .equalCentering
        secondStack.spacing = 10
        secondStack.alignment = .leading
        secondStack.distribution = .equalSpacing
        thirdStack.spacing = 10
        thirdStack.alignment = .leading
        thirdStack.distribution = .equalSpacing
        
        let fourthStack = UIStackView(arrangedSubviews: [secondStack, thirdStack])
        fourthStack.spacing = 40
        
        let mainStack = UIStackView(arrangedSubviews: [firstStack, fourthStack])
        mainStack.axis = .vertical
        mainStack.alignment = .leading
        mainStack.spacing = 20
        mainStack.distribution = .fill
        
        contentView.addSubview(mainStack)
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            mainStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            mainStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            mainStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            carImageView.widthAnchor.constraint(equalToConstant: 30),
            carImageView.heightAnchor.constraint(equalToConstant: 30),
            nameLabel.centerYAnchor.constraint(equalTo: carImageView.centerYAnchor),
        ])
    }
}
