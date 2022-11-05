//
//  ListSection.swift
//  HW8
//
//  Created by Сергей Бабич on 04.11.2022.
//

enum ListSection {
    case horizontal([ListItem])
    case vertical([ListItem])

    var items: [ListItem] {
        switch self {
            case .horizontal(let items), .vertical(let items):
                return items
        }
    }

    var count: Int {
        items.count
    }

    var title: String {
        switch self {
            case .horizontal(_):
                return "Тут что-то"
            case .vertical(_):
                return "И тут что-то"
        }
    }

    var section: String {
        switch self {
            case .horizontal(_):
                return "Horizontal"
            case .vertical(_):
                return "Vertical"
        }
    }
}
