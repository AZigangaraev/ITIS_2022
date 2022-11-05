//
//  HeaderSupplementaryView.swift
//  HW8
//
//  Created by Сергей Бабич on 04.11.2022.
//

import UIKit

class HeaderSupplementaryView: UICollectionReusableView {
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .white
        addSubview(headerLabel)
        setConstraint()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureHeader(sectionName: String) {
        headerLabel.text = sectionName
    }
}

extension HeaderSupplementaryView {
    private func setConstraint() {
        NSLayoutConstraint.activate([
            headerLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
}
