//
//  CustomTableViewCell.swift
//  HW6
//
//  Created by Тимур Хайруллин on 21.10.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setupUI()
    }

    private let nameLabel: UILabel = .init()

    func set(brand: Brand) {
        nameLabel.text = brand.name
    }

    func set_price(price: Description) {
        nameLabel.text = price.price
    }


    private func setupUI() {
        nameLabel.font = .systemFont(ofSize: 14)
        let stackView = UIStackView(arrangedSubviews: [nameLabel])
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
