//
//  NotAloneHttpDogViewCell.swift
//  CollectionViewHomework
//
//  Created by Данил Терлецкий on 05.11.2022.
//

import UIKit

 class NotAloneHttpDogViewCell: UICollectionViewCell {
     private var imageView: UIImageView = {
         let imageView = UIImageView()

         imageView.contentMode = .scaleAspectFit
         imageView.translatesAutoresizingMaskIntoConstraints = false

         return imageView
     }()

     private lazy var textLabel: UILabel = {
         let textLabel = UILabel()

         textLabel.font = .boldSystemFont(ofSize: 35)
         textLabel.textColor = .magenta
         textLabel.translatesAutoresizingMaskIntoConstraints = false

         return textLabel
     }()

     func set(text: String, imageUrl: URL) {
         textLabel.text = text
         loadImage(url: imageUrl)
     }

     override init(frame: CGRect) {
         super.init(frame: .zero)

         contentView.addSubview(imageView)
         contentView.contentMode = .bottomLeft
         imageView.addSubview(textLabel)
         setConstraint()

     }

     required init?(coder: NSCoder) {
         fatalError("Troubles with init(coder:)")
     }

     private func setConstraint() {
         NSLayoutConstraint.activate([
             imageView.topAnchor.constraint(equalTo: topAnchor),
             imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
             imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
             imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
             textLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -12),
             textLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 12)
         ])
     }

     private var dataTask: URLSessionDataTask?

     private func loadImage(url: URL) {
         imageView.image = nil
         dataTask?.cancel()

         let urlRequest = URLRequest(
             url: url,
             cachePolicy: .returnCacheDataElseLoad
         )

         dataTask = URLSession.shared
             .dataTask(with: urlRequest) { [imageView] data, _, _ in
                 guard let data else {
                     print("Troubles with image loading")
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
 }
