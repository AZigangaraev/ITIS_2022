//
//  CompositionalLayoutController.swift
//  HW7
//
//  Created by Тимур Хайруллин on 05.11.2022.
//

import UIKit

class MyImageCell: UICollectionViewCell {

    override init(frame: CGRect) {
        super.init(frame: frame)

        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setup()
    }

    private func setup() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .systemGray3
        contentView.addSubview(imageView)

        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)

        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
        ])
        setupDefaultRatio()
    }

    private func setupDefaultRatio() {
        aspectRatioConstraint?.isActive = false
        aspectRatioConstraint = imageView.widthAnchor.constraint(
            equalTo: imageView.heightAnchor, multiplier: 1
        )
        aspectRatioConstraint?.isActive = true
    }

    private func setupRatio(for image: CompositionalLayoutController.Image) {
        aspectRatioConstraint?.isActive = false
        aspectRatioConstraint = imageView.widthAnchor.constraint(
            equalTo: imageView.heightAnchor,
            multiplier: image.size.width / image.size.height
        )
        aspectRatioConstraint?.isActive = true
    }

    private var aspectRatioConstraint: NSLayoutConstraint?
    private let imageView: UIImageView = .init()
    private let label: UILabel = .init()
    private var workItem: DispatchWorkItem?

    func set(image: CompositionalLayoutController.Image) {
        setupDefaultRatio()
        workItem?.cancel()
        imageView.image = nil
        let workItem = DispatchWorkItem { [self] in
            guard let image = UIImage(named: image.name) else { return }

            imageView.image = image
        }
        self.workItem = workItem
        setupRatio(for: image)
        DispatchQueue.main.asyncAfter(
            deadline: .now(), execute: workItem
        )
    }
}

class CompositionalLayoutController: UIViewController, UICollectionViewDataSource {
    struct Image {
        let name: String
        let size: CGSize
    }

    private var images: [Image] = [
        .init(name: "0", size: CGSize(width: 1920, height: 1080)),
        .init(name: "1", size: CGSize(width: 1920, height: 1080)),
        .init(name: "2", size: CGSize(width: 1920,  height: 1080)),
        .init(name: "3", size: CGSize(width: 1920,  height: 1080)),
        .init(name: "4", size: CGSize(width: 1920,  height: 1080)),
        .init(name: "5", size: CGSize(width: 1920,  height: 1080)),
        .init(name: "6", size: CGSize(width: 1920,  height: 1080)),
        .init(name: "7", size: CGSize(width: 1920,  height: 1080)),
        .init(name: "8", size: CGSize(width: 1920,  height: 1080)),
        .init(name: "9", size: CGSize(width: 1920,  height: 1080))
    ]

    private func promotedCellsSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1)
            )
        )
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .absolute(320)
            ),
            repeatingSubitem: item, count: 1
        )
        let section = NSCollectionLayoutSection(
            group: group
        )
        section.orthogonalScrollingBehavior = .groupPaging
        return section
    }

    private func popularCellsSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(0.33)
            )
        )
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .absolute(320)
            ),
            repeatingSubitem: item,
            count: 3
        )
        let section = NSCollectionLayoutSection(
            group: group
        )
        section.orthogonalScrollingBehavior = .groupPaging
        return section
    }

    private func updatesCellsSection() -> NSCollectionLayoutSection {
        let item = NSCollectionLayoutItem(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .estimated(100)
            )
        )
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .estimated(300)
            ),
            repeatingSubitem: item, count: 1
        )
        let section = NSCollectionLayoutSection(
            group: group
        )
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
                case .first:
                    return self.promotedCellsSection()
                case .second:
                    return self.updatesCellsSection()
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

        Section.allCases.forEach { section in
            switch section {
            case .first:
                collectionView.register(
                    UICollectionViewCell.self, forCellWithReuseIdentifier: "\(section)"
                )
            case .second:
                collectionView.register(
                    MyImageCell.self, forCellWithReuseIdentifier: "\(section)"
                )
            }
        }

        collectionView.dataSource = self
    }

    enum Section: Int, CaseIterable {
        case first
        case second
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        Section.allCases.count
    }

    func collectionView(
        _ collectionView: UICollectionView, numberOfItemsInSection section: Int
    ) -> Int {
        switch Section(rawValue: section) {
        case .first: return 10
        case .second: return 10
        case nil: return 0
        }
    }

    private func cellContentConfiguration(section: Section) -> UIContentConfiguration {
        var configuration = UIListContentConfiguration.cell()
        switch section {
        case .first:
            configuration.image = UIImage(named: "7")
        case .second:
            configuration.image = UIImage(named: "0")
            configuration.text = "Image"
        }
        return configuration
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let section = Section(rawValue: indexPath.section) else { fatalError() }

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(section)", for: indexPath)
        switch section {
        case .first:
            cell.contentConfiguration = cellContentConfiguration(section: section)
            cell.contentView.backgroundColor = .white
        case .second:
            guard let cell = cell as? MyImageCell else { fatalError("Could not deque cell") }

            cell.set(image: images[indexPath.row])
        }
        return cell
    }
}
