import UIKit

class CustomTableViewCell: UITableViewCell {
    private let nameDrinkLabel: UILabel = .init()
    private let priceLabel: UILabel = .init()
    private let volumeLabel: UILabel = .init()
    private let bonusLabel: UILabel = .init()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func set(drink: Drink) {
        nameDrinkLabel.text = drink.name
        priceLabel.text = "\(drink.price) руб"
        volumeLabel.text = "\(drink.volume) л"
        bonusLabel.text = "\(drink.price / 100 * 10) бонусов"
    }
    
    private func setup() {
        nameDrinkLabel.font = .boldSystemFont(ofSize: 18)
        volumeLabel.font = .systemFont(ofSize: 14)
        priceLabel.font = .systemFont(ofSize: 12)
        priceLabel.adjustsFontSizeToFitWidth = true
        priceLabel.textAlignment = .right
        
        bonusLabel.font = .boldSystemFont(ofSize: 12)
        bonusLabel.adjustsFontSizeToFitWidth = true
        bonusLabel.textAlignment = .right
                
        setConstraints()
    }
    
    private func setConstraints() {
        let stackView = UIStackView(arrangedSubviews: [
            nameDrinkLabel, volumeLabel
        ])
        stackView.axis = .vertical
        stackView.alignment = .leading
        
        contentView.addSubview(stackView)
        contentView.addSubview(priceLabel)
        contentView.addSubview(bonusLabel)
                
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -100),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
        ])
        
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            priceLabel.centerYAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            //priceLabel.widthAnchor.constraint(equalToConstant: 180),
        ])
        
        bonusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bonusLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            bonusLabel.centerYAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 15),
            bonusLabel.widthAnchor.constraint(equalToConstant: 180),
        ])
    }
    
    func didSelect(drink: Drink, at indexPath: IndexPath) {
        print("Drink: \(drink.price) \(drink.volume) \(drink.name)")
    }
}
