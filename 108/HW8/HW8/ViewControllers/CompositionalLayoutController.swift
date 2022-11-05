//
//  CompositionalLayoutController.swift
//  HW8
//
//  Created by Сергей Бабич on 04.11.2022.
//

import UIKit

class CompositionalLayoutController: UIViewController {
    private let collectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewLayout()
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: collectionViewLayout
        )
        collectionView.backgroundColor = .none
        collectionView.bounces = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()

    private let sections = DataManager.shared.pageData

    override func viewDidLoad() {
        super.viewDidLoad()

        setView()
        setSubviews(collectionView)
        setConstraints()
        setDelegates()
    }

    private func setView() {
        view.backgroundColor = .white

        collectionView.register(
            HorizontalCollectionViewCell.self,
            forCellWithReuseIdentifier: CellIdentifier.horizontalSection.rawValue
        )
        collectionView.register(
            VerticalCollectionViewCell.self,
            forCellWithReuseIdentifier: CellIdentifier.verticalSection.rawValue
        )
        collectionView.register(
            HeaderSupplementaryView.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: CellIdentifier.header.rawValue
        )
        collectionView.collectionViewLayout = createLayout()
    }

    private func setDelegates() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
    }
}

extension CompositionalLayoutController: UICollectionViewDataSource, UICollectionViewDelegate {
    enum CellIdentifier: String {
        case horizontalSection
        case verticalSection
        case header
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        sections.count
    }

    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        sections[section].count
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        switch sections[indexPath.section] {
            case .horizontal(let item):
                guard
                    let cell = collectionView.dequeueReusableCell(
                        withReuseIdentifier: CellIdentifier.horizontalSection.rawValue,
                        for: indexPath
                    ) as? HorizontalCollectionViewCell
                else {
                    fatalError("Error")
                }
                cell.configure(with: item[indexPath.row])
                return cell
            case .vertical(let item):
                guard
                    let cell = collectionView.dequeueReusableCell(
                        withReuseIdentifier: CellIdentifier.verticalSection.rawValue,
                        for: indexPath
                    ) as? VerticalCollectionViewCell
                else {
                    fatalError("Error")
                }
                cell.configure(with: item[indexPath.row])
                return cell
        }
    }

    func collectionView(
        _ collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        at indexPath: IndexPath
    ) -> UICollectionReusableView {
        switch kind {
            case UICollectionView.elementKindSectionHeader:
                guard
                    let header = collectionView.dequeueReusableSupplementaryView(
                        ofKind: kind,
                        withReuseIdentifier: CellIdentifier.header.rawValue,
                        for: indexPath
                    ) as? HeaderSupplementaryView
                else {
                    fatalError("FatalError")
                }
                header.configureHeader(sectionName: sections[indexPath.section].section)
                return header
            default:
                return UICollectionReusableView()
        }
    }
}

extension CompositionalLayoutController {
    private func createLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { [weak self] sectionIndex, _ in
            guard let self = self else { return nil }
            let section = self.sections[sectionIndex]
            switch section {
                case .horizontal(_):
                    return self.createHorizontalSection()
                case .vertical(_):
                    return self.createVerticalSection()
            }
        }
    }

    private func createLayoutSection(
        group: NSCollectionLayoutGroup,
        behavior: UICollectionLayoutSectionOrthogonalScrollingBehavior,
        interGroupSpacing: CGFloat,
        supplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem],
        contentInsets: Bool
    ) -> NSCollectionLayoutSection {
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = behavior
        section.interGroupSpacing = interGroupSpacing
        section.boundarySupplementaryItems = supplementaryItems
        section.supplementariesFollowContentInsets = contentInsets
        return section
    }

    private func createHorizontalSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(
            layoutSize: .init(
                widthDimension: .fractionalWidth(0.9),
                heightDimension: .fractionalHeight(0.9)
            )
        )
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: .init(
                widthDimension: .fractionalWidth(0.55),
                heightDimension: .fractionalHeight(0.3)
            ),
            subitems: [item]
        )
        let section = createLayoutSection(
            group: group,
            behavior: .groupPaging,
            interGroupSpacing: 10,
            supplementaryItems: [supplementaryHeaderItem()],
            contentInsets: false
        )
        section.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
        return section
    }

    private func createVerticalSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(layoutSize: .init(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)
        ))
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: .init(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(0.4)
            ),
            subitems: [item]
        )
        let section = createLayoutSection(
            group: group,
            behavior: .none,
            interGroupSpacing: 5,
            supplementaryItems: [supplementaryHeaderItem()],
            contentInsets: false
        )
        section.contentInsets = .init(top: 0, leading: 10, bottom: 0, trailing: -10)
        return section
    }

    private func supplementaryHeaderItem() -> NSCollectionLayoutBoundarySupplementaryItem {
        .init(
            layoutSize: .init(
                widthDimension: .fractionalWidth(1),
                heightDimension: .estimated(30)
            ),
            elementKind: UICollectionView.elementKindSectionHeader,
            alignment: .top
        )
    }
}

extension CompositionalLayoutController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor
                .constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            collectionView.leadingAnchor
                .constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            collectionView.trailingAnchor
                .constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            collectionView.bottomAnchor
                .constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
}
