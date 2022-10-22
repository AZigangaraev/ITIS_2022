//
//  ClothesTableViewCell.swift
//  ClothesCatalog
//
//  Created by Радмир Фазлыев on 21.10.2022.
//

import UIKit

struct Clothes {
    let brand: String
    let price: String
    let size: String
    let clothesType: String
    let styleType: String
    let material: String
    
}

class ClothesTableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private let brandLabel: UILabel = .init()
    private let priceLabel: UILabel = .init()
    private let sizeLabel: UILabel = .init()
    private let clothesTypeLabel: UILabel = .init()
    private let styleTypeLabel: UILabel = .init()
    private let materialLabel: UILabel = .init()
    private let brandImage: UIImageView = .init()
    
    func set(clothes: Clothes) {
        brandLabel.text = clothes.brand
        priceLabel.text = clothes.price
        sizeLabel.text = clothes.size
        clothesTypeLabel.text = clothes.clothesType
        styleTypeLabel.text = clothes.styleType
        materialLabel.text = clothes.material
    }
    
    func discription() -> String {
        let discription = "Brand - \(brandLabel.text ?? "") | Price - \(priceLabel.text ?? "") rubles | Size - \(sizeLabel.text ?? "") | Type - \(clothesTypeLabel.text ?? "") | Gender - \(styleTypeLabel.text ?? "") | Material - \(materialLabel.text ?? "")"
        return discription
    }
    
    private func setup() {
        brandLabel.font = .boldSystemFont(ofSize: 20)
        priceLabel.font = .monospacedDigitSystemFont(ofSize: 17, weight: .regular)
        sizeLabel.font = .boldSystemFont(ofSize: 20)
        let stackView = UIStackView(arrangedSubviews: [brandLabel, priceLabel, sizeLabel, clothesTypeLabel, styleTypeLabel, materialLabel])
        stackView.axis = .vertical
        stackView.alignment = .leading
        contentView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
        ])
    }
}
