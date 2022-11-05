//
//  ReccomendetionCell.swift
//  HomeWork108
//
//  Created by Илья Казначеев on 02.11.2022.
//

import Foundation


import UIKit

class ReccomendetionCell: UICollectionViewCell {

    private var dataTask: URLSessionDataTask?

    private func loadImage(url: URL) {
        imageView.image = nil
        dataTask?.cancel()
        let urlRequest = URLRequest(
            url: url,
            cachePolicy: .reloadIgnoringLocalAndRemoteCacheData
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
    
    func setCar (car: Car) {
        loadImage(url: car.url)
    }

    private func setup() {
        
        contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
        ])
        imageView.layer.cornerRadius = 10
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
    }
    

    
}

