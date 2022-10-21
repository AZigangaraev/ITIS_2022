//
//  TableViewController.swift
//  HW
//
//  Created by Максим Тарасов on 21.10.2022.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    private let tableView: UITableView = .init()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }

    private func setup(){
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
                  tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                  tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                  tableView.topAnchor.constraint(equalTo: view.topAnchor),
                  tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
              ])

        tableView.register(
            Cell.self,
            forCellReuseIdentifier: Indentifier.custom_animal.rawValue
        )

        tableView.dataSource = self
        tableView.reloadData()
        tableView.delegate = self

    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? first.count : second.count
    }

    private var first: [Animal]  = GetAnimal.getFirst()
    private var second: [Animal]  = GetAnimal.getSecond()

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            var cell: UITableViewCell = .init()
            let animal = first[indexPath.row]
            if let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: Indentifier.animal.rawValue) {
                cell = dequeuedCell
            } else {
                cell = UITableViewCell(
                    style: .default, reuseIdentifier:  Indentifier.animal.rawValue
                )
            }
            var configuration = UIListContentConfiguration.valueCell()
            configuration.text = "\(animal.name)"
            configuration.textProperties.color = .black

            if (animal.name.contains("a")){
                configuration.secondaryText = "You can feed him"
                configuration.secondaryTextProperties.color = .systemGray3
            }

            configuration.image = UIImage(named: "\(animal.name)")
            configuration.imageProperties.maximumSize = CGSize(width: 50, height: 50)
            cell.contentConfiguration = configuration
            return cell
        }
        
        let animal = second[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Indentifier.custom_animal.rawValue, for: indexPath) as? Cell else{
            fatalError()
        }
        cell.set(animal: animal)
        return cell
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIStackView()
        view.backgroundColor = .clear
        let label = UILabel()
        label.text = section == 0 ? "Only in the zoo" : "You can buy it:"
        label.textColor = .black
        view.addArrangedSubview(label)
        return view
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return indexPath.section == 0 ? false : true
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == 1){
            second[indexPath.row].printAnimal()
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    enum Indentifier: String{
        case animal
        case custom_animal
    }
}
