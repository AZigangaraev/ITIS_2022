//
//  CompositionalLayoutController.swift
//  CollectionViewHomework
//
//  Created by Данил Терлецкий on 05.11.2022.
//
import UIKit

 class CompositionalLayoutController: UIViewController, UICollectionViewDataSource {

     // MARK: - Sections
     private func aloneHttpDogHeader() -> NSCollectionLayoutSection {
         let item = NSCollectionLayoutItem(
             layoutSize: NSCollectionLayoutSize(
                 widthDimension: .absolute(view.bounds.width),
                 heightDimension: .absolute(100)
             )
         )
         let group = NSCollectionLayoutGroup.horizontal(
             layoutSize: NSCollectionLayoutSize(
                 widthDimension: .absolute(view.bounds.width),
                 heightDimension: .absolute(100)
             ),
             repeatingSubitem: item, count: 1
         )
         let section = NSCollectionLayoutSection(group: group)
         return section
     }

     private func aloneHttpDogCellSection() -> NSCollectionLayoutSection {
         let item = NSCollectionLayoutItem(
             layoutSize: NSCollectionLayoutSize(
                 widthDimension: .absolute(view.bounds.width/2),
                 heightDimension: .absolute(300)
             )
         )
         let group = NSCollectionLayoutGroup.horizontal(
             layoutSize: NSCollectionLayoutSize(
                 widthDimension: .absolute(view.bounds.width),
                 heightDimension: .absolute(300)
             ),
             repeatingSubitem: item, count: 2
         )
         group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0)

         let section = NSCollectionLayoutSection(group: group)
         section.orthogonalScrollingBehavior = .groupPaging
         return section
     }

     private func notAloneHttpDogHeader() -> NSCollectionLayoutSection {
         let item = NSCollectionLayoutItem(
             layoutSize: NSCollectionLayoutSize(
                 widthDimension: .fractionalWidth(1),
                 heightDimension: .absolute(250)
             )
         )
         item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0)

         let group = NSCollectionLayoutGroup.vertical(
             layoutSize: NSCollectionLayoutSize(
                 widthDimension: .fractionalWidth(1),
                 heightDimension: .absolute(250)
             ),
             repeatingSubitem: item, count: 1
         )
         group.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0)

         let section = NSCollectionLayoutSection(group: group)
         section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
         return section
     }

     // MARK: - Enums & Structures

     enum Section: Int, CaseIterable {
         case aloneHttpDogHeader
         case aloneHttpDog
         case notAloneHttpDogHeader
         case notAloneHttpDog
     }

     private struct NotAloneDogViewCell {
         let notAloneDogName: String
         let url: URL
     }

     // MARK: - Data

     private let aloneDogsImages: [URL] = [
         URL(string: "https://http.dog/100.jpg")!,
         URL(string: "https://http.dog/101.jpg")!,
         URL(string: "https://http.dog/102.jpg")!,
         URL(string: "https://http.dog/103.jpg")!,
         URL(string: "https://http.dog/200.jpg")!,
         URL(string: "https://http.dog/203.jpg")!,
         URL(string: "https://http.dog/204.jpg")!,
         URL(string: "https://http.dog/206.jpg")!,
         URL(string: "https://http.dog/218.jpg")!,
         URL(string: "https://http.dog/226.jpg")!,
         URL(string: "https://http.dog/301.jpg")!,
         URL(string: "https://http.dog/306.jpg")!,
         URL(string: "https://http.dog/307.jpg")!,
         URL(string: "https://http.dog/308.jpg")!,
         URL(string: "https://http.dog/302.jpg")!
     ]

     private let notAloneDogsImages: [NotAloneDogViewCell] = [
         .init(notAloneDogName: "201", url: URL(string: "https://http.dog/201.jpg")!),
         .init(notAloneDogName: "201", url: URL(string: "https://http.dog/202.jpg")!),
         .init(notAloneDogName: "205", url: URL(string: "https://http.dog/205.jpg")!),
         .init(notAloneDogName: "207", url: URL(string: "https://http.dog/207.jpg")!),
         .init(notAloneDogName: "300", url: URL(string: "https://http.dog/300.jpg")!),
         .init(notAloneDogName: "303", url: URL(string: "https://http.dog/303.jpg")!),
         .init(notAloneDogName: "304", url: URL(string: "https://http.dog/304.jpg")!),
         .init(notAloneDogName: "305", url: URL(string: "https://http.dog/305.jpg")!),
         .init(notAloneDogName: "401", url: URL(string: "https://http.dog/401.jpg")!),
         .init(notAloneDogName: "407", url: URL(string: "https://http.dog/407.jpg")!),
         .init(notAloneDogName: "409", url: URL(string: "https://http.dog/409.jpg")!),
         .init(notAloneDogName: "429", url: URL(string: "https://http.dog/429.jpg")!),
     ]

     // MARK: - Creating UICollectionView

     private lazy var collectionView: UICollectionView = {
         let configuration = UICollectionViewCompositionalLayoutConfiguration()
         let layout = UICollectionViewCompositionalLayout(
             sectionProvider: { [weak self] section, _ in
                 guard let self else { fatalError("Self is nil") }
                 guard let section = Section(rawValue: section) else {
                     fatalError("Troubles with (\(section)) as it doesn't exist")
                 }

                 switch section {
                 case .aloneHttpDogHeader:
                     return self.aloneHttpDogHeader()
                 case .aloneHttpDog:
                     return self.aloneHttpDogCellSection()
                 case .notAloneHttpDogHeader:
                     return self.aloneHttpDogHeader()
                 case .notAloneHttpDog:
                     return self.notAloneHttpDogHeader()
                 }
             },
             configuration: configuration)

         return UICollectionView(
             frame: .zero, collectionViewLayout: layout
         )
     }()

     override func viewDidLoad() {
         super.viewDidLoad()

         setup()
     }

     // MARK: - Setup =)

     private func setup(){
         view.backgroundColor = .white
         view.addSubview(collectionView)

         collectionView.translatesAutoresizingMaskIntoConstraints = false
         NSLayoutConstraint.activate([
             collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
             collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
             collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
         ])

         collectionView.register(NotAloneHttpDogViewCell.self, forCellWithReuseIdentifier: "\(Section.notAloneHttpDog)")
         collectionView.register(AloneHttpDogViewCell.self, forCellWithReuseIdentifier: "\(Section.aloneHttpDog)")
         collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "\(Section.aloneHttpDogHeader)")
         collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "\(Section.notAloneHttpDogHeader)")

         collectionView.dataSource = self
     }

     // MARK: - UICollectionViewDataSource & Other

     private func cellContenConfiguration(section: Section, indexPath: IndexPath, cell: UICollectionViewCell) -> UIContentConfiguration {
         var configuration = UIListContentConfiguration.cell()
         switch section {
         case.aloneHttpDogHeader:
             configuration.text = "Alone http dogs"
             configuration.textProperties.color = .black
             configuration.textProperties.font = .boldSystemFont(ofSize: 35)
             configuration.textProperties.alignment = .center
         case .notAloneHttpDogHeader:
             configuration.text = "Not alone http dogs"
             configuration.textProperties.color = .black
             configuration.textProperties.font = .boldSystemFont(ofSize: 35)
             configuration.textProperties.alignment = .center
         default:
             return UIListContentConfiguration.cell()
         }
         return configuration
     }

     func numberOfSections(in collectionView: UICollectionView) -> Int {
         Section.allCases.count
     }

     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         switch Section(rawValue: section) {
             case .aloneHttpDogHeader: return 1
             case .aloneHttpDog: return notAloneDogsImages.count
             case .notAloneHttpDogHeader: return 1
             case .notAloneHttpDog: return aloneDogsImages.count
             case nil: return 0
         }
     }

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         guard let section = Section(rawValue: indexPath.section) else {
             fatalError("=)")
         }

         switch section {
             case .aloneHttpDog:
                 guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(section)", for: indexPath)
                         as? AloneHttpDogViewCell else { fatalError("Troubles with getting AloneHttpDogViewCell") }
                 let image = aloneDogsImages[indexPath.item]
                 cell.backgroundColor = .cyan
                 cell.set(imageUrl: image)

                 return cell

             case .notAloneHttpDog:
                 guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(section)", for: indexPath)
                         as? NotAloneHttpDogViewCell else { fatalError("Troubles with getting NotAloneHttpDogViewCell") }
                 let image = notAloneDogsImages[indexPath.item]
                 cell.set(text: image.notAloneDogName, imageUrl: image.url)

                 return cell

             default:
                 let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(section)", for: indexPath)
                 cell.contentConfiguration = cellContenConfiguration(section: section, indexPath: indexPath, cell: cell)
                 cell.contentView.backgroundColor = .clear

                 return cell
         }
     }
 }
