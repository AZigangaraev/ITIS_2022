import UIKit

class TableViewController: UIViewController {
    private let combos = Models.getComboList();
    private let drinks = Models.getDrinkList()
    private let tableView: UITableView = .init(frame: .zero, style: .insetGrouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        navigationItem.title = "Меню"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        view.addSubview(tableView)

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: TypeOfCell.comboSection.rawValue)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: TypeOfCell.drinkSection.rawValue)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    enum TypeOfCell: String {
        case comboSection
        case drinkSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            //var cell: UITableViewCell = .init()
            let cell = UITableViewCell(style: .value2, reuseIdentifier: TypeOfCell.comboSection.rawValue)
            
            let combo = combos[indexPath.row]
            var valueCell = UIListContentConfiguration.valueCell()
            
            valueCell.imageProperties.maximumSize = CGSize(width: 50, height: 50)
            valueCell.image = UIImage(named: combo.image)
            valueCell.text = String(combo.name)
            valueCell.secondaryText = String(combo.price)
            
            cell.contentConfiguration = valueCell
            cell.selectionStyle = .none
            
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TypeOfCell.drinkSection.rawValue, for: indexPath) as? CustomTableViewCell else {fatalError()}

            let drink = drinks[indexPath.row]
            cell.set(drink: drink)

            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return combos.count
        } else {
            return drinks.count
        }
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Combos"
        } else {
            return "Drinks"
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let cell = tableView.cellForRow(at: indexPath) as? CustomTableViewCell {
            cell.didSelect(drink: drinks[indexPath.row], at: indexPath)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
}


