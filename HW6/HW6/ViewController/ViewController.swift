//
//  ViewController.swift
//  HW6
//
//  Created by Тимур Хайруллин on 21.10.2022.
//

import UIKit

class ViewController: UIViewController {

    private let tableView: UITableView = .init()
    private let brands = Brand.getBrandList()
    private let prices = Description.getpriceList()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CellIdentifire.sectOne.rawValue)
        tableView.dataSource = self
        tableView.delegate = self

        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CellIdentifire.sectTwo.rawValue)
        tableView.dataSource = self
        tableView.delegate = self
    }

    private func setupUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Список автомобилей"
        setSubviews(tableView)
        setConstraint()
    }

    private func setSubviews(_ subviews: UIView ...) {
        subviews.forEach { view.addSubview($0) }
    }

    private func setConstraint() {
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
    enum CellIdentifire: String {
        case sectOne
        case sectTwo
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier:
                CellIdentifire.sectOne.rawValue) else { return UITableViewCell() }

            let brand = brands[indexPath.row]
            var content = UIListContentConfiguration.valueCell()

            switch indexPath.row {
            default:
                content.text = String(brand.name)
            }

            cell.contentConfiguration = content

            cell.selectionStyle = .none

            return cell
            
        default:
            guard let cell = tableView.dequeueReusableCell(withIdentifier:
                CellIdentifire.sectTwo.rawValue) as? CustomTableViewCell else {
                fatalError("Error") }

            let price = prices[indexPath.row]
            cell.set_price(price: price)

            return cell
        }

    }

    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Brands"
        }
        return "Description"
    }
}


