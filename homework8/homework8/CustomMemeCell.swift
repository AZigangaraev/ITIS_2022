import UIKit

class CustomMemeCell: UICollectionViewCell {
    private let imageView: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let title: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    
    private let backView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray6
        return view
    }()
    
    func set(text: String, imageUrl: URL) {
        title.text = text
        loadImage(url: imageUrl)
    }
    
    private var dataTask: URLSessionDataTask?

    private func loadImage(url: URL) {
        imageView.image = nil
        dataTask?.cancel()
        let urlRequest = URLRequest( url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
        dataTask = URLSession.shared.dataTask(with: urlRequest) { [imageView] data, _, _ in
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
    
    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.addSubview(backView)
        contentView.addSubview(title)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            
            backView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 200),
            backView.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            backView.trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
            backView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            
            title.bottomAnchor.constraint(equalTo: backView.bottomAnchor, constant: -12),
            title.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 12)
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
