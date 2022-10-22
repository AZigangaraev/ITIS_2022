import UIKit
class CustomTableView:UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier:reuseIdentifier)
        setupUI()
    }
    required init?(coder:NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    private let markLabel:UILabel = .init()
    private let weightLabel:UILabel = .init()
    private let consumptionLabel:UILabel = .init()
    private let maxSpeedLabel:UILabel = .init()
    
     func set (car:Cars) {
        markLabel.text = car.mark
        weightLabel.text = "Weight: \(car.weight)"
        consumptionLabel.text = "Counsumption: \(car.consumption)"
        maxSpeedLabel.text = "Max speed: \(car.maxSpeed)"
        
    }
    
    private func setupUI() {
        let stackView = UIStackView(arrangedSubviews: [
            markLabel,weightLabel,consumptionLabel,maxSpeedLabel
        ])
        stackView.axis = .vertical
        stackView.alignment = .leading
        contentView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            
        ])
    }
    func didSelect(car:Cars,at indexPath: IndexPath) {
        print("MODEL \(markLabel.text), WEIGHT \(weightLabel.text), CONSUMPTION \(consumptionLabel.text), MAXSPEED \(maxSpeedLabel.text)")
        
    }
}


class Cars {
    let mark:String
    let weight:Int
    let consumption:Int
    let maxSpeed:Int
    
    
    init(mark: String, weight: Int, consumption: Int, maxSpeed: Int) {
        self.mark = mark
        self.weight = weight
        self.consumption = consumption
        self.maxSpeed = maxSpeed
    
    }

}


var cars:[Cars] = [
    Cars(mark: "Shelby", weight: 1343 ,consumption: 25, maxSpeed: 250),
    Cars(mark: "Nissan", weight: 2222 ,consumption: 11, maxSpeed:190),
    Cars(mark: "Alfa Romeo", weight: 1850 ,consumption: 31, maxSpeed: 310),
    Cars(mark: "Audi", weight: 2432 ,consumption: 22, maxSpeed: 320),
    Cars(mark: "BMW", weight: 2321 ,consumption: 16, maxSpeed: 350),
    Cars(mark: "Porche", weight: 2522 ,consumption: 18, maxSpeed:300),
    Cars(mark: "Subaru", weight: 1345 ,consumption: 295,maxSpeed:280),
    Cars(mark: "Ferrari", weight: 1983 ,consumption: 14, maxSpeed: 330),
    Cars(mark: "Rio", weight: 2243 ,consumption: 22, maxSpeed: 210),
    Cars(mark: "Lada", weight: 2213 ,consumption: 14, maxSpeed: 100),
        ]




    
