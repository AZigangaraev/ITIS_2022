//
// ViewController.swift
// Homework
//
// Created by Lambert Lani on 11/5/22.
//
import UIKit
class ViewController: UIViewController, UICollectionViewDataSource {
  private let sections = Cat().cat
  private func popularCellsSection() -> NSCollectionLayoutSection {
    let item = NSCollectionLayoutItem(
      layoutSize: NSCollectionLayoutSize(
        widthDimension: .fractionalWidth(1),
        heightDimension: .fractionalHeight(0.33)
      )
    )
    let group = NSCollectionLayoutGroup.horizontal(
      layoutSize: NSCollectionLayoutSize(
        widthDimension: .fractionalWidth(1),
        heightDimension: .absolute(320)
      ),
      subitem: item,
      count: 2
    )
    let section = NSCollectionLayoutSection(
      group: group
    )
    let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: .init(widthDimension: .fractionalHeight(1), heightDimension: .fractionalHeight(0.3)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
        section.boundarySupplementaryItems = [header]
    section.orthogonalScrollingBehavior = .groupPaging
    return section
  }
  private func updatesCellsSection() -> NSCollectionLayoutSection {
    let item = NSCollectionLayoutItem(
      layoutSize: NSCollectionLayoutSize(
        widthDimension: .fractionalWidth(1),
        heightDimension: .absolute(50)
      )
    )
    let group = NSCollectionLayoutGroup.horizontal(
      layoutSize: NSCollectionLayoutSize(
        widthDimension: .fractionalWidth(1),
        heightDimension: .estimated(300)
      ),
      subitem: item, count: 1
    )
    let section = NSCollectionLayoutSection(
      group: group
    )
    let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.05)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
        section.interGroupSpacing = 20
        section.contentInsets = .init(top: 5, leading: 3, bottom: 5, trailing: 3)
        section.boundarySupplementaryItems = [header]
    return section
  }
  private lazy var collectionView: UICollectionView = {
    let configuration = UICollectionViewCompositionalLayoutConfiguration()
    let layout = UICollectionViewCompositionalLayout(
      sectionProvider: { [self] section, environment in
        guard let section = Section(rawValue: section) else {
          fatalError("This section: (\(section)) does not exist")
        }
        switch section {
          case .popular:
            return popularCellsSection()
          case .updates:
            return updatesCellsSection()
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
    collectionView.register(CatCollectionViewCell.self, forCellWithReuseIdentifier: "CatCollectionViewCell")
    view.backgroundColor = .systemBackground
    view.addSubview(collectionView)
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      collectionView.topAnchor.constraint(equalTo: view.topAnchor),
      collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
    ])
    Section.allCases.forEach {
      collectionView.register(
        UICollectionViewCell.self, forCellWithReuseIdentifier: "\($0)"
      )
    }
    collectionView.dataSource = self
  }
  enum Section: Int, CaseIterable {
    case popular
    case updates
  }
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    Section.allCases.count
  }
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    switch Section(rawValue: section) {
      case .popular: return 10
      case .updates: return 12
      case nil: return 0
    }
  }
  private func cellContentConfiguration(section: Section) -> UIContentConfiguration {
    let configuration = UIListContentConfiguration.cell()
    UICollectionViewCompositionalLayout{[weak self] sectionIndex, _ in
      guard let self = self else { return nil}
      switch section {
      case .popular:
          return self.popularCellsSection()
      case .updates:
        return self.updatesCellsSection()
      }
    }
    return configuration
  }
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    switch sections {
    case .cat(let cat):
      guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CatCollectionViewCell", for: indexPath) as? CatCollectionViewCell else {return UICollectionViewCell()}
            cell.configureCell(imageName: cat[indexPath.row].image)
            return cell
    }
    guard let section = Section(rawValue: indexPath.section) else { fatalError() }
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(section)", for: indexPath)
    cell.contentConfiguration = cellContentConfiguration(section: section)
    cell.contentView.backgroundColor = .lightGray
    return cell
  }
}
