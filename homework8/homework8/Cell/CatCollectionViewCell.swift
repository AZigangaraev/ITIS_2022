//
//  CatCollectionViewCell.swift
// Homework
//
// Created by Lambert Lani on 11/5/22.
//
import UIKit
class CatCollectionViewCell: UICollectionViewCell{
  private var dataTask: URLSessionDataTask?
    private let catImageView: UIImageView = {
      let imageView = UIImageView()
      imageView.contentMode = .scaleAspectFit
      imageView.translatesAutoresizingMaskIntoConstraints = false
      return imageView
    }()
    override init(frame: CGRect) {
      super.init(frame: frame)
      setupView()
      setConstraint()
    }
    required init?(coder: NSCoder) {
      super.init(coder: coder)
      setupView()
      setConstraint()
    }
    func setupView(){
      backgroundColor = .none
      addSubview(catImageView)
    }
    func configureCell(imageName: String){
      loadImage(url: URL(string: imageName)!)
      catImageView.contentMode = .scaleAspectFit
    }
    private func loadImage(url: URL) {
      catImageView.image = nil
      dataTask?.cancel()
      let urlRequest = URLRequest(
        url: url,
        cachePolicy: .reloadIgnoringLocalAndRemoteCacheData
      )
      dataTask = URLSession.shared
        .dataTask(with: urlRequest) { [catImageView] data, _, _ in
          guard let data = data else {
            return
          }
          let image = UIImage(data: data)
          DispatchQueue.main.async { [catImageView] in
            guard let image = image else { return }
            catImageView.image = image
          }
        }
      dataTask?.resume()
    }
    func setConstraint(){
      NSLayoutConstraint.activate([
        catImageView.topAnchor.constraint(equalTo: topAnchor, constant: 1),
        catImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -1),
        catImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
        catImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0)
      ])
    }
}
