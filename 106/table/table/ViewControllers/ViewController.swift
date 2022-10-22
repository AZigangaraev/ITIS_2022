import UIKit

class ViewController: UIViewController {
    
    //инициализируем наше view
    private let tableView: UITableView = .init(frame: .zero,style: .insetGrouped)
    private let infos = Info.getInfoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 110
        setupUI()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CellIdentefier.wheelsSect.rawValue)
        tableView.register(CustomTableView.self, forCellReuseIdentifier: CellIdentefier.carInfo.rawValue)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    private func setupUI() {
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Cars"
        setViews(_subviews: tableView)
        setConstraint()
        
    }
    
    private func setViews(_subviews: UIView...) {
        _subviews.forEach { view.addSubview($0) }
    }
    private func setConstraint () {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return infos.count
            
        }
        return cars.count
    }
    
    enum CellIdentefier:String {
        case wheelsSect
        case carInfo
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentefier.wheelsSect.rawValue) else {return UITableViewCell()}
            let info = infos[indexPath.row]
            var content = UIListContentConfiguration.valueCell()
            content.imageProperties.maximumSize = CGSize(width: 50, height: 50)
            content.image = UIImage(named: info.image)
            content.text = String(info.name)
            cell.selectionStyle = .none
            cell.contentConfiguration = content
            print(info.name)
            
            return cell
        default:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentefier.carInfo.rawValue) as? CustomTableView else {fatalError("Error")}
            let car = cars[indexPath.row]
            
            cell.set(car:car)
            return cell
            
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let cell = tableView.cellForRow(at: indexPath) as? CustomTableView {
            cell.didSelect(car: cars[indexPath.row], at: indexPath)
        }
    }
}

