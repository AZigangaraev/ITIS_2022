//
//  AloneHttpDogViewCell.swift
//  CollectionViewHomework
//
//  Created by Данил Терлецкий on 05.11.2022.
//

import UIKit

 class AloneHttpDogViewCell: UICollectionViewCell {
     private var imageView: UIImageView = {
         let imageView = UIImageView()

         imageView.layer.masksToBounds = true
         imageView.contentMode = .scaleToFill
         imageView.translatesAutoresizingMaskIntoConstraints = false
         imageView.layer.cornerRadius = 25

         return imageView
     }()

     func set(imageUrl: URL) {
         loadImage(url: imageUrl)
     }

     override init(frame: CGRect) {
         super.init(frame: .zero)

         contentView.addSubview(imageView)

         NSLayoutConstraint.activate([
             imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 25),
             imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -25),
             imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
             imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
         ])

     }

     required init?(coder: NSCoder) {
         fatalError("Troubles with init(coder:)")
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
