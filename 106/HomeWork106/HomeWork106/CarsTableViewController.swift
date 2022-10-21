//
//  CarsTableViewController.swift
//  HomeWork106
//
//  Created by Илья Казначеев on 18.10.2022.
//

import UIKit


class CarsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private let tableView: UITableView = .init(frame: .zero, style: .insetGrouped)
    
    private func setup(){
        tableView.backgroundColor = .clear
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        tableView.register(
            CarCell.self,
            forCellReuseIdentifier: Indentifier.custom_car.rawValue
        )
        
        tableView.dataSource = self
        tableView.reloadData()
        tableView.delegate = self
        
    }
    
    enum Indentifier: String{
        case car
        case custom_car
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? firstSection.count : secondSection.count
    }
    
    private var firstSection: [Car]  = DataBase.getFor1Section()
    private var secondSection: [Car]  = DataBase.getFor2Section()
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            var cell: UITableViewCell = .init()
            let car = firstSection[indexPath.row]
            if let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: Indentifier.car.rawValue) {
                cell = dequeuedCell
            } else {
                cell = UITableViewCell(
                    style: .default, reuseIdentifier:  Indentifier.car.rawValue
                )
            }
            var configuration = UIListContentConfiguration.valueCell()
            configuration.text = "\(car.company)  \(car.model)"
            configuration.textProperties.color = .black

            if (car.company == ("LADA")){
                configuration.secondaryText = "Ведро"
                configuration.secondaryTextProperties.color = .gray
                configuration.secondaryTextProperties.font = .systemFont(ofSize: 14)
            }

            configuration.image = DataBase.chooseImageForCar(car: car)
            configuration.imageProperties.maximumSize = CGSize(width: 30, height: 30)
            cell.backgroundColor = .clear
            cell.contentConfiguration = configuration
            return cell
        }
        let car = secondSection[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Indentifier.custom_car.rawValue, for: indexPath) as? CarCell else{
            fatalError()
        }
        cell.set(car: car)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIStackView()
        view.backgroundColor = .clear
        let label = UILabel()
        label.text = section == 0 ? "В продаже:" : "Продано:"
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
            secondSection[indexPath.row].printDescription()
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
}
