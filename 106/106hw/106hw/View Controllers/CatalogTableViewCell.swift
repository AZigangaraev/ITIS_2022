//
//  CatalogTableViewCell.swift
//  106hw
//
//  Created by Artyom Mitrofanov on 21.10.2022.
//

import UIKit


class CatalogTableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setup()
    }
    
    private let typeLabel: UILabel = .init()
    private let rarityLabel: UILabel = .init()
    private let enduranceLabel: UILabel = .init()
    private let powerLabel: UILabel = .init()
    private let equipImage: UIImageView = .init()
    
    func set(equipment: Equipment) {
        typeLabel.text = "\(equipment.type)"
        rarityLabel.text = "Rarity: \(equipment.rarity)"
        enduranceLabel.text = "Endurance: \(equipment.endurance)"
        powerLabel.text = "Power: \(equipment.power)"
        equipImage.image = equipment.equipImage
    }
    
    private func setup() {
        self.backgroundColor = .clear
        
        typeLabel.font = .boldSystemFont(ofSize: 15)
        rarityLabel.font = .monospacedDigitSystemFont(ofSize: 12, weight: .regular)
        enduranceLabel.font = .monospacedDigitSystemFont(ofSize: 12, weight: .regular)
        powerLabel.font = .monospacedDigitSystemFont(ofSize: 12, weight: .regular)
        
        let descriptionStackView = UIStackView(arrangedSubviews: [
            rarityLabel, enduranceLabel, powerLabel
        ])
        descriptionStackView.axis = .vertical
        descriptionStackView.alignment = .center
        
        let stackView = UIStackView(arrangedSubviews: [
            equipImage, typeLabel, descriptionStackView
        ])
        stackView.alignment = .leading
        
        stackView.spacing = 10
        
        contentView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        equipImage.translatesAutoresizingMaskIntoConstraints = false
        descriptionStackView.translatesAutoresizingMaskIntoConstraints = false
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor
            ),
            stackView.trailingAnchor.constraint(
                equalTo: contentView.trailingAnchor
            ),
            stackView.topAnchor.constraint(
                equalTo: contentView.safeAreaLayoutGuide.topAnchor
            ),
            stackView.bottomAnchor.constraint(
                equalTo: contentView.safeAreaLayoutGuide.bottomAnchor
            ),
            stackView.heightAnchor.constraint(
                equalToConstant: 100
            ),
            
            typeLabel.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: 20
            ),
            
            descriptionStackView.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: 20
            ),
            descriptionStackView.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: 220
            ),
            
            equipImage.leadingAnchor.constraint(
                equalTo: contentView.leadingAnchor,
                constant: 4
            ),
            equipImage.topAnchor.constraint(
                equalTo: contentView.topAnchor,
                constant: 10
            ),
            equipImage.heightAnchor.constraint(
                equalToConstant: 60
            ),
            equipImage.widthAnchor.constraint(
                equalToConstant: 60
            )
        ])
    }
}
