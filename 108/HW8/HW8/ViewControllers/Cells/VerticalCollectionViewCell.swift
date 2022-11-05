//
//  VerticalCollectionViewCell.swift
//  HW8
//
//  Created by Сергей Бабич on 04.11.2022.
//

import UIKit

class VerticalCollectionViewCell: UICollectionViewCell {
    let activityIndicator = UIActivityIndicatorView(style: .medium)

    private let verticalImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = nil
        return imageView
    }()

    private let verticalLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.backgroundColor = .systemGray2
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        activityIndicator.hidesWhenStopped = true
        activityIndicator.center = self.contentView.center
        setSubviews(verticalImageView, activityIndicator)
        verticalImageView.addSubview(verticalLabel)
        setConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }

    func configure(with listItem: ListItem?) {
        verticalImageView.image = nil
        activityIndicator.startAnimating()
        verticalLabel.text = listItem?.title
        NetworkManager.shared.fetchData(from: listItem?.image) { [weak self] result in
            switch result {
                case .success(let imageData):
                    self?.verticalImageView.image = UIImage(data: imageData)
                    self?.activityIndicator.stopAnimating()
                case .failure(let error):
                    print(error)
            }
        }
    }
}

extension VerticalCollectionViewCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            verticalLabel.leadingAnchor
                .constraint(equalTo: contentView.leadingAnchor, constant: 12),
            verticalLabel.bottomAnchor
                .constraint(equalTo: contentView.bottomAnchor, constant: -12),

            verticalImageView.topAnchor
                .constraint(equalTo: topAnchor, constant: 5),
            verticalImageView.leadingAnchor
                .constraint(equalTo: leadingAnchor, constant: 5),
            verticalImageView.trailingAnchor
                .constraint(equalTo: trailingAnchor, constant: -5),
            verticalImageView.bottomAnchor
                .constraint(equalTo: verticalLabel.topAnchor, constant: -5),
        ])
    }
}
