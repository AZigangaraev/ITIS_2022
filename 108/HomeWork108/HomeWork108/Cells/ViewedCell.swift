//
//  ViewedCell.swift
//  HomeWork108
//
//  Created by Илья Казначеев on 01.11.2022.
//

import UIKit

class ViewedCell: UICollectionViewCell {

    private var dataTask: URLSessionDataTask?

    private func loadImage(url: URL) {
        imageView.image = nil
        imageView.contentMode = .scaleAspectFit
        dataTask?.cancel()
        let urlRequest = URLRequest(
            url: url,
            cachePolicy: .returnCacheDataElseLoad
        )
        dataTask = URLSession.shared
            .dataTask(with: urlRequest) { [imageView] data, _, _ in
                guard let data else {
                    print("could not load image")
                    return
                }

                let image = UIImage(data: data)
                DispatchQueue.main.async { [imageView] in
                    guard let image else { return }

                    imageView.image = image
                }
            }
        dataTask?.resume()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setup()
    }

    private var imageView: UIImageView = .init()
    private var nameLabel: UILabel = .init()
    
    func setCar (car: Car) {
        loadImage(url: car.url)
        nameLabel.text = "\(car.company) \(car.model) "
    }

    private func setup() {
        contentView.addSubview(imageView)
        contentView.addSubview(nameLabel)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            nameLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 12),
            nameLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -12),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOpacity = 0.2
        imageView.layer.shadowOffset = CGSize(width: 4, height: 4)
        imageView.layer.shadowRadius = 5.0
    }
     
}
