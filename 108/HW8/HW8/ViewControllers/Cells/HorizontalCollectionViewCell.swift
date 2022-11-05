//
//  HorizontalCollectionViewCell.swift
//  HW8
//
//  Created by Сергей Бабич on 04.11.2022.
//

import UIKit

class HorizontalCollectionViewCell: UICollectionViewCell {
    let activityIndicator = UIActivityIndicatorView(style: .medium)
    private let horizontalImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = nil
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        activityIndicator.hidesWhenStopped = true
        activityIndicator.center = self.contentView.center
        setSubviews(horizontalImageView, activityIndicator)
        setConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with listItem: ListItem?) {
        horizontalImageView.image = nil
        activityIndicator.startAnimating()
        NetworkManager.shared.fetchData(from: listItem?.image) { [weak self] result in
            switch result {
                case .success(let imageData):
                    self?.horizontalImageView.image = UIImage(data: imageData)
                    self?.activityIndicator.stopAnimating()
                case .failure(let error):
                    print(error)
            }
        }
    }

    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}

extension HorizontalCollectionViewCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            horizontalImageView.topAnchor
                .constraint(equalTo: topAnchor, constant: 5),
            horizontalImageView.leadingAnchor
                .constraint(equalTo: leadingAnchor, constant: 5),
            horizontalImageView.trailingAnchor
                .constraint(equalTo: trailingAnchor, constant: -5),
            horizontalImageView.bottomAnchor
                .constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}
