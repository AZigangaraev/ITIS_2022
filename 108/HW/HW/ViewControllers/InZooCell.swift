//
//  InZooCell.swift
//  HW
//
//  Created by Максим Тарасов on 03.11.2022.
//

import UIKit

class InZooCell: UICollectionViewCell {

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setup()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    private var imgImageView: UIImageView = .init()
    
    func setAnimal (animal: Animal) {
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
        imgImageView.layer.masksToBounds = true
        imgImageView.layer.cornerRadius = 75
        contentView.backgroundColor = .systemGray3
        contentView.addSubview(imgImageView)
        imgImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imgImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            imgImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            imgImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            imgImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
        ])
    }
}
