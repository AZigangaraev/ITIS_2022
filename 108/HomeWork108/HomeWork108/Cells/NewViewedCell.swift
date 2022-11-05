//
//  NewViewedCell.swift
//  HomeWork108
//
//  Created by Илья Казначеев on 05.11.2022.
//

import UIKit

class NewViewedCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setup()
    }

    private func setup() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .systemGray3
        contentView.addSubview(imageView)

        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)

        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
        ])
        setupDefaultRatio()
    }

    private func setupDefaultRatio() {
        aspectRatioConstraint?.isActive = false
        aspectRatioConstraint = imageView.widthAnchor.constraint(
            equalTo: imageView.heightAnchor, multiplier: 1
        )
        aspectRatioConstraint?.isActive = true
    }

    private func setupRatio(for image: DataBase.Car) {
        aspectRatioConstraint?.isActive = false
        aspectRatioConstraint = imageView.widthAnchor.constraint(
            equalTo: imageView.heightAnchor,
            multiplier: image.size.width / image.size.height
        )
        aspectRatioConstraint?.isActive = true
    }

    private var aspectRatioConstraint: NSLayoutConstraint?
    private let imageView: UIImageView = .init()
    private let label: UILabel = .init()
    private var workItem: DispatchWorkItem?

    func set(image: DataBase.Car) {
        setupDefaultRatio()
        workItem?.cancel()
        imageView.image = nil
        let workItem = DispatchWorkItem { [self] in
            guard let image = UIImage(named: image.name) else { return }

            imageView.image = image
        }
        self.workItem = workItem
        setupRatio(for: image)
        DispatchQueue.main.asyncAfter(
            deadline: .now() + .seconds(.random(in: 1 ... 3)), execute: workItem
        )
    }
}
