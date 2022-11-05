//
//  ViewController.swift
//  HW
//
//  Created by Максим Тарасов on 03.11.2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    private func inZooSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1)
            )
        )
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(0.5),
                heightDimension: .absolute(320)
            ),
            repeatingSubitem: item, count: 1
        )
        let section = NSCollectionLayoutSection(
            group: group
        )
        section.boundarySupplementaryItems = [ .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(40)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)]
        section.orthogonalScrollingBehavior = .groupPaging
        
        return section
    }

    private func canBuySection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalWidth(1)
            )
        )
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .estimated(320)
            ),
            repeatingSubitem: item, count: 1
        )
        let section = NSCollectionLayoutSection(
            group: group
        )
        section.boundarySupplementaryItems = [ .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(40)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)]
        
        return section
    }

    private lazy var collectionView: UICollectionView = {
        let configuration = UICollectionViewCompositionalLayoutConfiguration()
        let layout = UICollectionViewCompositionalLayout(
            sectionProvider: { [weak self] section, environment in
                guard let self else { fatalError("Self is nil") }
                guard let section = Section(rawValue: section) else {
                    fatalError("This section: (\(section)) does not exist")
                }

                switch section {
                case .inZoo:
                    return self.inZooSection()
                case .canBuy:
                    return self.canBuySection()
                }
            },
            configuration: configuration
        )
        
        return UICollectionView(
            frame: .zero, collectionViewLayout: layout
        )
    }()


    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    private func setup() {
        view.backgroundColor = .systemBackground
        view.addSubview(collectionView)

        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])

        collectionView.register(InZooCell.self, forCellWithReuseIdentifier: "inZoo")
        collectionView.register(Cell.self, forCellWithReuseIdentifier: "canBuy")
        collectionView.register(HeaderCollectionReusableView.self,
                                        forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                        withReuseIdentifier: HeaderCollectionReusableView.reuseId)
        collectionView.dataSource = self

    }

    enum Section: Int, CaseIterable {
        case inZoo
        case canBuy
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        Section.allCases.count
    }

    func collectionView(
        _ collectionView: UICollectionView, numberOfItemsInSection section: Int
    ) -> Int {
        switch Section(rawValue: section) {
        case .inZoo: return 10
        case .canBuy: return 10
        case nil: return 0
        }
    }

    private var first: [Animal]  = GetAnimal.getFirst()
    private var second: [Animal]  = GetAnimal.getSecond()

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let section = Section(rawValue: indexPath.section) else { fatalError() }

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(section)", for: indexPath)
        cell.contentView.backgroundColor = .white

        switch section {
            
        case .inZoo:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(section)", for: indexPath) as? InZooCell else{
                fatalError()
            }
            cell.setAnimal(animal: first[indexPath.item])
            return cell
        case .canBuy:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(section)", for: indexPath) as? Cell else{
                fatalError()
            }
            cell.setAnimal(animal: second[indexPath.item])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.reuseId, for: indexPath) as! HeaderCollectionReusableView
            
            if indexPath.section == 0 {
                header.title.text = "In the Zoo"
            } else {
                header.title.text = "You can Buy"
            }
            return header
        }
}
