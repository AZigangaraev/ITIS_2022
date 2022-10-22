//
//  File.swift
//  106hw
//
//  Created by Artyom Mitrofanov on 21.10.2022.
//

import UIKit

class CatalogTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private let tableView: UITableView = .init(frame: .zero, style: .insetGrouped)
    private func setup() {
        
        view.backgroundColor = .white
        view.addSubview(tableView)
        
        tableView.backgroundColor = .clear
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor
            ),
            tableView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor
            ),
            tableView.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor
            ),
            tableView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor
            )
        ])
        tableView.register(
            CatalogTableViewCell.self,
            forCellReuseIdentifier: CellIdentifier.armor.rawValue
        )
        tableView.register(
            CatalogTableViewCell.self,
            forCellReuseIdentifier: CellIdentifier.weapon.rawValue
        )
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    enum CellIdentifier: String {
        case armor
        case weapon
    }
    
    private let armorSection: [Equipment] = Equipment.getArmor()
    private let weaponSection: [Equipment] = Equipment.getWeapon()
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        if indexPath.section == 0 {
            let armor = armorSection[indexPath.row]
    
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: CellIdentifier.armor.rawValue
            ) as? CatalogTableViewCell
            else {
                fatalError("error")
                
            }
            
            var config = UIListContentConfiguration.valueCell()
            config.text = "\(armor.type)"
            config.textProperties.font = .monospacedDigitSystemFont(ofSize: 15, weight: .bold)
            config.image = armor.equipImage
            config.imageProperties.maximumSize = CGSize(width: 60, height: 60)
            
            if (armor.power.contains("best")) {
                config.secondaryText = "Protection: \(armor.power)"
                config.secondaryTextProperties.font = .systemFont(ofSize: 12)

            }
            cell.contentConfiguration = config
            cell.backgroundColor = .clear
            return cell
        }
        
        let weapon = weaponSection[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: CellIdentifier.weapon.rawValue
        ) as? CatalogTableViewCell
        else {
            fatalError("error")
            
        }
        cell.set(equipment: weapon)
        return cell
    }
    
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return section == 0 ? armorSection.count : weaponSection.count
    }
    
    func numberOfSections(
        in tableView: UITableView
    ) -> Int {
        2
    }
    
    func tableView(
        _ tableView: UITableView,
        viewForHeaderInSection section: Int
    ) -> UIView? {
        let stackView = UIStackView()
        let label = UILabel()
        if section == 0 {
            label.text = "Armor"
        } else {
            label.text = "Weapon"
        }
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        stackView.addArrangedSubview(label)
        return stackView
        }
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        if indexPath.section == 1 {
            weaponSection[indexPath.row].printDescription()
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}
