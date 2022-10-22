//
//  ClothesTableViewController.swift
//  ClothesCatalog
//
//  Created by Радмир Фазлыев on 21.10.2022.
//

import UIKit

class ClothesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    private let cloth:[Clothes] = storageForFirstSection()
    
    private let tableView: UITableView = .init()
    
    private func setup() {
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray3
        tableView.backgroundColor = .clear

        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        tableView.register(
            ClothesTableViewCell.self,
            forCellReuseIdentifier: CellIdentifier.male.rawValue
        )
        
        tableView.register(
            ClothesTableViewCell.self,
            forCellReuseIdentifier: CellIdentifier.female.rawValue
        )

        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    
    enum CellIdentifier: String {
        case male
        case female
    }
    
    private let maleClothes: [Clothes] = storageForFirstSection()
    private let femaleClothes: [Clothes] = storageForSecondSection()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }

    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        if section == 0 {
            return maleClothes.count
        } else {
            return femaleClothes.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let clothesForMale = maleClothes[indexPath.row]
            let cell: UITableViewCell
            if let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.male.rawValue) {
                cell = dequeuedCell
            } else {
                cell = UITableViewCell(style: .default, reuseIdentifier: CellIdentifier.female.rawValue)
            }
            var configuration = UIListContentConfiguration.cell()
            configuration.text = "Brand: \(clothesForMale.brand) | Price: \(clothesForMale.price)"
            configuration.image = UIImage(named: "\(clothesForMale.brand)")
            configuration.imageProperties.maximumSize = CGSize(width: 80, height: 80)
            if (clothesForMale.brand == "Nike") {
                configuration.secondaryText = "(!)Nike - cool sportwear(!)"
                configuration.secondaryTextProperties.font = .systemFont(ofSize: 15)
                configuration.secondaryTextProperties.color = .green
            }
            cell.contentConfiguration = configuration
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.female.rawValue, for: indexPath) as? ClothesTableViewCell else { fatalError()
            }
            
            let clothesForFemale = femaleClothes[indexPath.row]
            cell.set(clothes: clothesForFemale)
            var configuration = UIListContentConfiguration.cell()
            configuration.text = "Brand: \(clothesForFemale.brand) | Price: \(clothesForFemale.price) | Size: \(clothesForFemale.size) | Gender: \(clothesForFemale.clothesType) | Style: \(clothesForFemale.styleType) | Material: \(clothesForFemale.material)"
            configuration.image = UIImage(named: "\(clothesForFemale.brand)")
            configuration.imageProperties.maximumSize = CGSize(width: 80, height: 80)
            cell.contentConfiguration = configuration
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.section == 1) {
            tableView.deselectRow(at: indexPath, animated: true)
            print((tableView.cellForRow(at: indexPath) as? ClothesTableViewCell)!.discription())
        }
    }

    func tableView(
        _ tableView: UITableView, titleForHeaderInSection section: Int
    ) -> String? {
        if section == 0 {
            return "Male Clothes:"
        } else {
            return "Female Clothes:"
        }
    }
    
    func tableView(
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath
    ) -> CGFloat {
        UITableView.automaticDimension
    }
}
