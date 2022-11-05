import UIKit

class WallpaperCollectionViewCell: UICollectionViewCell{
    
    private var dataTask: URLSessionDataTask?
    
    private var wallpaperImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private var wallpaperLabel: UILabel = {
        let label = UILabel()
        label.text = "Wallpaper"
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        addSubview(wallpaperImageView)
        addSubview(wallpaperLabel)
    }
    
    func configureCell(title: String, imageName: String, imageSize: CGSize){
        self.frame.size = imageSize
        loadImage(url: URL(string: imageName)!)
        wallpaperLabel.text = title
    }
    
    private func loadImage(url: URL) {
        wallpaperImageView.image = nil
        dataTask?.cancel()
        let urlRequest = URLRequest(
            url: url,
            cachePolicy: .reloadIgnoringLocalAndRemoteCacheData
        )
        dataTask = URLSession.shared
            .dataTask(with: urlRequest) { [wallpaperImageView] data, _, _ in
                guard let data else {
                    return
                }

                let image = UIImage(data: data)
                DispatchQueue.main.async { [wallpaperImageView] in
                    guard let image else { return }

                    wallpaperImageView.image = image
                }
            }
        dataTask?.resume()
    }
    
    func setConstraint(){
        NSLayoutConstraint.activate([
            wallpaperLabel.bottomAnchor.constraint(equalTo: wallpaperImageView.bottomAnchor, constant: -12),
            wallpaperLabel.leadingAnchor.constraint(equalTo: wallpaperImageView.leadingAnchor, constant: 12),
            wallpaperImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            wallpaperImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            wallpaperImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            wallpaperImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0)
        ])
    }
}
