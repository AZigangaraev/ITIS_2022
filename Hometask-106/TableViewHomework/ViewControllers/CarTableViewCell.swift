//
//  CarTableViewCell.swift
//  TableViewHomework
//
//  Created by Данил Терлецкий on 22.10.2022.
//

import UIKit

class CarTableViewCell: UITableViewCell {
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
    private let speedLabel: UILabel = .init()
    private let fuelConsumptionLabel: UILabel = .init()

    func set(car: Car) {
        nameLabel.text = car.name
        weightLabel.text = "Вес: \(car.weight.description)"
        speedLabel.text = "Максимальная скорость: \(car.speed.description)"
        fuelConsumptionLabel.text = "Расход на 100 км: \(car.fuelConsumption.description) литров"
    }

    private func setup() {
        nameLabel.font = .monospacedDigitSystemFont(ofSize: 20, weight: .bold)
        weightLabel.font = .monospacedDigitSystemFont(ofSize: 15, weight: .regular)
        speedLabel.font = .monospacedDigitSystemFont(ofSize: 15, weight: .regular)
        fuelConsumptionLabel.font = .monospacedDigitSystemFont(ofSize: 15, weight: .regular)

        let stackView = UIStackView(
            arrangedSubviews: [ nameLabel, weightLabel, speedLabel, fuelConsumptionLabel ]
        )
        stackView.axis = .vertical
        stackView.alignment = .leading

        contentView.addSubview(stackView)

        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
        ])
    }
}
