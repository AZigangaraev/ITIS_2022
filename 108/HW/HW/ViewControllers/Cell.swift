//
//  Cell.swift
//  HW
//
//  Created by Максим Тарасов on 21.10.2022.
//

import UIKit

class Cell: UICollectionViewCell {

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setup()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    private var imgImageView: UIImageView = .init()
    private var nameLabel: UILabel = .init()

    func setAnimal (animal: Animal) {
        nameLabel.text = "\(animal.name)"
        nameLabel.textColor = .black
        loadImage(url: URL(string: "\(animal.link)")!)
    }
    
    private var dataTask: URLSessionDataTask?

    private func loadImage(url: URL) {
        imgImageView.image = nil
        dataTask?.cancel()
        let urlRequest = URLRequest(
            url: url,
            cachePolicy: .reloadIgnoringLocalAndRemoteCacheData
        )
        dataTask = URLSession.shared
            .dataTask(with: urlRequest) { [imgImageView] data, _, _ in
                guard let data else {
                    print("could not load image")
                    return
                }

                let image = UIImage(data: data)
                DispatchQueue.main.async { [imgImageView] in
                    guard let image else { return }
                    imgImageView.image = image
                }
            }
        dataTask?.resume()
    }

    private func setup() {
        imgImageView.contentMode = .scaleAspectFit
        contentView.addSubview(imgImageView)
        contentView.addSubview(nameLabel)
            
        imgImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: imgImageView.leadingAnchor, constant: 12),
            nameLabel.bottomAnchor.constraint(equalTo: imgImageView.bottomAnchor, constant: -12),
            imgImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imgImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imgImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            imgImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
        ])
    }

}
