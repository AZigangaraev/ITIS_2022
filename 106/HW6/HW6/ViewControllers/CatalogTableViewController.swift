//
//  CatalogTableViewController.swift
//  HW6
//
//  Created by Сергей Бабич on 20.10.2022.
//

import UIKit

class CatalogTableViewController: UIViewController {
    private let animeAndAuthorLists = ExpandedModel.getModel()
    private let tableView: UITableView = .init(frame: .zero, style: .insetGrouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        registerCellsAndSetupTableView()
    }
    
    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
    }
    
    private func setupUI() {
        view.backgroundColor = .red
        
        navigationItem.title = "Каталог ерунды😸"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setSubviews(tableView)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

extension CatalogTableViewController: UITableViewDataSource, UITableViewDelegate {
    enum CellIdentifier: String {
        case authorsSection
        case animeListSection
    }

    private func registerCellsAndSetupTableView() {
        tableView.dataSource = self
        tableView.delegate = self

        tableView.register(
            UITableViewCell.self,
            forCellReuseIdentifier: CellIdentifier.authorsSection.rawValue
        )

        tableView.register(
            AnimeMainTableViewCell.self,
            forCellReuseIdentifier: CellIdentifier.animeListSection.rawValue
        )
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
            case 0:
                let cell = UITableViewCell(style: .value2, reuseIdentifier: CellIdentifier.authorsSection.rawValue)

                let author = animeAndAuthorLists.authorList[indexPath.row]
                var content = UIListContentConfiguration.valueCell()

                content.imageProperties.maximumSize = CGSize(width: 50, height: 50)
                content.image = UIImage(named: author.image)

                switch indexPath.row {
                    default:
                        content.text = String(author.name)
                        content.secondaryText = author.anouns
                }

                cell.contentConfiguration = content
                cell.selectionStyle = .none

                return cell
            default:
                guard
                    let cell = tableView
                        .dequeueReusableCell(
                            withIdentifier: CellIdentifier.animeListSection.rawValue, for: indexPath
                        ) as? AnimeMainTableViewCell
                else {
                    fatalError("Could not deque cell of type \(AnimeMainTableViewCell.self)")
                }

                let anime = animeAndAuthorLists.animeList[indexPath.row]
                cell.set(anime: anime)

                return cell
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return animeAndAuthorLists.authorList.count
        }
        return animeAndAuthorLists.animeList.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Authors"
        }
        return "Anime list"
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let cell = tableView.cellForRow(at: indexPath) as? AnimeMainTableViewCell {
            cell.didSelect(anime: animeAndAuthorLists.animeList[indexPath.row], at: indexPath)
        }
    }
}
