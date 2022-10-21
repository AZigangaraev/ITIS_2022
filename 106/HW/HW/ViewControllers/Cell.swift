//
//  Cell.swift
//  HW
//
//  Created by Максим Тарасов on 21.10.2022.
//

import UIKit

class Cell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setup()
    }

    private let nameLabel: UILabel = .init()
    private let foodLabel: UILabel = .init()
    private let weightLabel: UILabel = .init()
    private let ageLabel: UILabel = .init()
    private let priceLabel: UILabel = .init()
    private let imgImageView: UIImageView = .init()

    func set(animal: Animal){
        nameLabel.text = "\(animal.name)"
        foodLabel.text = "Food: \(animal.food)"
        weightLabel.text = "Weight: \(animal.weight)"
        ageLabel.text = "Age: \(animal.age)"
        priceLabel.text = "Price: \(animal.price)"
        imgImageView.image = UIImage(named: "\(animal.name)")
    }

    private func setup() {
        nameLabel.font = .boldSystemFont(ofSize: 20)
        nameLabel.textColor = .black
        foodLabel.textColor = .black
        weightLabel.textColor = .black
        ageLabel.textColor = .black
        priceLabel.textColor = .black

        let animalStack = UIStackView(arrangedSubviews: [imgImageView, nameLabel, foodLabel, weightLabel, ageLabel, priceLabel])
        animalStack.axis = .vertical
        animalStack.alignment = .leading
        animalStack.spacing = 5
        animalStack.distribution = .fill

        contentView.addSubview(animalStack)
        animalStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animalStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            animalStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            animalStack.topAnchor.constraint(equalTo: contentView.topAnchor),
            animalStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imgImageView.widthAnchor.constraint(equalToConstant: 100),
            imgImageView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
}
