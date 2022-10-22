//
//  CarTableViewController.swift
//  TableViewHomework
//
//  Created by Данил Терлецкий on 21.10.2022.
//

import UIKit

class CarTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let cars: [Car] = CarService.getAllCars()
    let russianCars: [Car] = CarService.getRussianCars()
    let foreignCars: [Car] = CarService.getForeignCars()

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    private let tableView: UITableView = .init()

    private func setup() {
        view.addSubview(tableView)
        view.backgroundColor = .white

        tableView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])

        tableView.register(CarTableViewCell.self, forCellReuseIdentifier: CarIdentifier.foreign.rawValue)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
        tableView.separatorInset = .init(top: 0, left: 20, bottom: 0, right: 20)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        section == 0 ? russianCars.count : foreignCars.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }

    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        indexPath.section == 0 ? false : true
    }

    enum CarIdentifier: String {
        case russian
        case foreign
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell: UITableViewCell
            let car = cars[indexPath.row]

            if let dequedCell = tableView.dequeueReusableCell(withIdentifier: CarIdentifier.russian.rawValue) {
                cell = dequedCell
            } else {
                cell = UITableViewCell(
                    style: .value2, reuseIdentifier: CarIdentifier.russian.rawValue
                )
            }

            var configuration = UIListContentConfiguration.cell()
            configuration.text = car.name
            configuration.textProperties.font = .monospacedDigitSystemFont(ofSize: 20, weight: .bold)
            configuration.image = UIImage(systemName: "car")

            if car.price < 500000 {
                configuration.secondaryText = "Дешёвая!"
                configuration.secondaryTextProperties.font = .monospacedSystemFont(ofSize: 18, weight: .light)

                let label: UILabel = .init(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
                label.text = car.price.description + "₽"
                cell.accessoryView = label
            } else {
                configuration.secondaryText = "Дорогая!"
                configuration.secondaryTextProperties.font = .monospacedSystemFont(ofSize: 18, weight: .light)
            }

            cell.contentConfiguration = configuration

            return cell
        } else {
            guard
                let cell = tableView
                    .dequeueReusableCell(
                        withIdentifier: CarIdentifier.foreign.rawValue, for: indexPath
                    ) as? CarTableViewCell
            else {
                fatalError("Could not deque cell of type \(CarTableViewCell.self)")
            }

            let car = cars[indexPath.row]
            cell.set(car: car)
            return cell
        }
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (section) {
            case 0:
                return "Российский автопром"
            case 1:
                return "Иномарки"
            default:
                return "НЛО"
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(foreignCars[indexPath.row])
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
}
