//
//  DataManager.swift
//  HW8
//
//  Created by Сергей Бабич on 04.11.2022.
//

enum Sections: String {
    case horizontal
    case vertical
}

class DataManager {
    static let shared = DataManager()

    private let vertical: ListSection = {
        .vertical([
            .init(title: "300", image: "https://http.cat/300", section: Sections.horizontal.rawValue),
            .init(title: "301", image: "https://http.cat/301", section: Sections.horizontal.rawValue),
            .init(title: "302", image: "https://http.cat/302", section: Sections.horizontal.rawValue),
            .init(title: "303", image: "https://http.cat/303", section: Sections.horizontal.rawValue),
            .init(title: "304", image: "https://http.cat/304", section: Sections.horizontal.rawValue),
            .init(title: "305", image: "https://http.cat/305", section: Sections.horizontal.rawValue),
            .init(title: "306", image: "https://http.cat/306", section: Sections.horizontal.rawValue),
            .init(title: "307", image: "https://http.cat/307", section: Sections.horizontal.rawValue),
            .init(title: "308", image: "https://http.cat/308", section: Sections.horizontal.rawValue),
            .init(title: "450", image: "https://http.cat/450", section: Sections.horizontal.rawValue),
            .init(title: "444", image: "https://http.cat/444", section: Sections.horizontal.rawValue)
        ])
    }()

    private let horizontal: ListSection = {
        .horizontal([
            .init(title: "404", image: "https://http.cat/404", section: Sections.vertical.rawValue),
            .init(title: "100", image: "https://http.cat/100", section: Sections.vertical.rawValue),
            .init(title: "101", image: "https://http.cat/101", section: Sections.vertical.rawValue),
            .init(title: "102", image: "https://http.cat/102", section: Sections.vertical.rawValue),
            .init(title: "200", image: "https://http.cat/200", section: Sections.vertical.rawValue),
            .init(title: "201", image: "https://http.cat/201", section: Sections.vertical.rawValue),
            .init(title: "202", image: "https://http.cat/202", section: Sections.vertical.rawValue),
            .init(title: "203", image: "https://http.cat/203", section: Sections.vertical.rawValue),
            .init(title: "204", image: "https://http.cat/204", section: Sections.vertical.rawValue),
            .init(title: "205", image: "https://http.cat/205", section: Sections.vertical.rawValue),
            .init(title: "206", image: "https://http.cat/206", section: Sections.vertical.rawValue)
        ])
    }()

    var pageData: [ListSection] {
        [horizontal, vertical]
    }

    private init() {}
}
