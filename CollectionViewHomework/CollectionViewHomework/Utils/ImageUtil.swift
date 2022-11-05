//
//  ImageUtil.swift
//  CollectionViewHomework
//
//  Created by Данил Терлецкий on 05.11.2022.
//

import UIKit

 class ImageUtil {
     private lazy var imageView: UIImageView = {
         let imageView = UIImageView()

         imageView.contentMode = .scaleAspectFit
         imageView.translatesAutoresizingMaskIntoConstraints = false

         return imageView
     }()

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
                     print("Troubles with loading image")
                     return
                 }

                 let image = UIImage(data: data)
                 DispatchQueue.main.async { [imageView] in
                     guard let image else { return }
                     imageView.image = image
                     imageView.widthAnchor
                         .constraint(
                             equalTo: imageView.heightAnchor,
                             multiplier: image.size.width / image.size.height
                         )
                     .isActive = true
                 }
             }

         dataTask?.resume()
     }
 }
