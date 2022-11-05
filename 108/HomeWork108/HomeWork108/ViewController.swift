//
//  ViewController.swift
//  HomeWork108
//
//  Created by Илья Казначеев on 01.11.2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    private func recommendationCellsSection() -> NSCollectionLayoutSection {
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
        section.boundarySupplementaryItems = [
            .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(40)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        ]
        section.orthogonalScrollingBehavior = .groupPaging
        return section
    }
    
    private func viewedCellsSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalWidth(1)
            )
        )
        
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .absolute(450)
            ),
            repeatingSubitem: item, count: 1
        )
        let section = NSCollectionLayoutSection(
            group: group
        )

        
        section.boundarySupplementaryItems = [
            .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .absolute(40)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        ]
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
                case .recommendations:
                    return self.recommendationCellsSection()
                case .viewed:
                    return self.viewedCellsSection()
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
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])
        
        collectionView.register(ReccomendetionCell.self, forCellWithReuseIdentifier: "recommendations")
        collectionView.register(ViewedCell.self, forCellWithReuseIdentifier: "viewed")
        collectionView.register(HeaderCollectionReusableView.self,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                withReuseIdentifier: HeaderCollectionReusableView.reuseId)
        
        collectionView.dataSource = self
    }
    
    enum Section: Int, CaseIterable {
        case recommendations
        case viewed
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        Section.allCases.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView, numberOfItemsInSection section: Int
    ) -> Int {
        switch Section(rawValue: section) {
        case .recommendations: return 10
        case .viewed: return 10
        case nil: return 0
        }
    }
    
    public var firstSection: [Car]  = DataBase.getFor1Section()
    public var secondSection: [Car]  = DataBase.getFor2Section()
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let section = Section(rawValue: indexPath.section) else { fatalError() }
        switch section {
        case .recommendations:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(section)", for: indexPath) as? ReccomendetionCell else{
                fatalError()
            }
            cell.setCar(car: firstSection[indexPath.item])
            return cell
        case .viewed:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(section)", for: indexPath) as? ViewedCell else{
                fatalError()
            }
            cell.setCar(car: secondSection[indexPath.item])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.reuseId, for: indexPath) as! HeaderCollectionReusableView
        
        if indexPath.section == 0 {
            header.title.text = "Рекомендации"
        } else {
            header.title.text = "Просмотренные"
        }
        return header
    }
    
}
    



