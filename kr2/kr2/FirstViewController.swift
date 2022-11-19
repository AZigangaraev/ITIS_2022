import UIKit

let jsonData = json.data(using: .utf8)!
let dataDecoder: [Data] = try! JSONDecoder().decode([Data].self, from: jsonData)

struct Data: Codable {
    let accounts: [Account]
}

struct Account: Codable {
    let user: User
    let settings: [Setting]
}

struct Setting: Codable {
    let items: [Item]
}

struct Item: Codable {
    let title: String
    let icon: String
    let value: String?
}

struct User: Codable {
    let phoneNumber: String?
    let nickname, realName: String
    let avatar: String
}

extension Data{
    static func getData() -> [Data]{
        return dataDecoder
    }
}


class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    private let tableView: UITableView = .init(frame: .zero, style: .insetGrouped)
    var data = Data.getData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(data)
        setupView()
        setView()
    }
    
    private func setView() {
        navigationController?.navigationBar.prefersLargeTitles = true
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.first?.accounts.count ?? 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = .init(style: .value1, reuseIdentifier: data.first?.accounts[indexPath.row].user.nickname)
        let userName = data.first?.accounts[indexPath.row].user.nickname
        var value = UIListContentConfiguration.valueCell()
        value.text = userName
        cell.contentConfiguration = value
        cell.selectionStyle = .none
        return cell
    }
    
    private func setupView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
