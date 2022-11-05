//
//  TableViewController.swift
//  HW7
//
//  Created by Тимур Хайруллин on 05.11.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    private let customImageView: UIImageView = .init()

    func set(imageUrl: URL) {
        loadImage(url: imageUrl)
    }

    private var dataTask: URLSessionDataTask?

    private func loadImage(url: URL) {
        customImageView.image = nil
        dataTask?.cancel()
        let urlRequest = URLRequest(
            url: url,
            cachePolicy: .reloadIgnoringLocalAndRemoteCacheData
        )
        dataTask = URLSession.shared
            .dataTask(with: urlRequest) { [customImageView] data, _, _ in
                guard let data else {
                    print("could not load image")
                    return
                }

                let image = UIImage(data: data)
                DispatchQueue.main.async { [customImageView] in
                    guard let image else { return }

                    customImageView.image = image
                }
            }
        dataTask?.resume()
    }
    class TableViewController: UIViewController, UITableViewDataSource {
        private struct NamedImage {
            let url: URL
        }

        private let images: [NamedImage] = [
            .init(url: URL(string: "https://i.pinimg.com/originals/a6/5d/c2/a65dc27d5e7457fdaa5c76939f24ba3d.jpg")!),
            .init(url: URL(string: "https://i.pinimg.com/originals/a6/5d/c2/a65dc27d5e7457fdaa5c76939f24ba3d.jpg")!),
            .init(url: URL(string: "https://i.pinimg.com/originals/a6/5d/c2/a65dc27d5e7457fdaa5c76939f24ba3d.jpg")!),
            .init(url: URL(string: "https://i.pinimg.com/originals/a6/5d/c2/a65dc27d5e7457fdaa5c76939f24ba3d.jpg")!),
            .init(url: URL(string: "https://i.pinimg.com/originals/a6/5d/c2/a65dc27d5e7457fdaa5c76939f24ba3d.jpg")!),
            .init(url: URL(string: "https://i.pinimg.com/originals/a6/5d/c2/a65dc27d5e7457fdaa5c76939f24ba3d.jpg")!),
            .init(url: URL(string: "https://i.pinimg.com/originals/a6/5d/c2/a65dc27d5e7457fdaa5c76939f24ba3d.jpg")!),
            .init(url: URL(string: "https://i.pinimg.com/originals/a6/5d/c2/a65dc27d5e7457fdaa5c76939f24ba3d.jpg")!),
            .init(url: URL(string: "https://i.pinimg.com/originals/a6/5d/c2/a65dc27d5e7457fdaa5c76939f24ba3d.jpg")!),
            .init(url: URL(string: "https://i.pinimg.com/originals/a6/5d/c2/a65dc27d5e7457fdaa5c76939f24ba3d.jpg")!),
        ]

        func tableView(
            _ tableView: UITableView,
            numberOfRowsInSection section: Int
        ) -> Int {
            images.count
        }

        func tableView(
            _ tableView: UITableView,
            cellForRowAt indexPath: IndexPath
        ) -> UITableViewCell {
            guard
                let cell = tableView
                    .dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
                    as? TableViewCell
            else {
                fatalError("Could not deque cell")
            }

            let image = images[indexPath.row]
            cell.set(imageUrl: image.url)
            return cell
        }

    }
}

