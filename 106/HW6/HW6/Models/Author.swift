//
//  Author.swift
//  HW6
//
//  Created by Сергей Бабич on 20.10.2022.
//

struct Author {
    let name: String
    let image: String
    var anouns: String?

    init(name: String, image: String) {
        self.name = name
        self.image = image
    }

    init(name: String, image: String, anouns: String) {
        self.name = name
        self.image = image
        self.anouns = anouns
    }
}

extension Author {
    static func getAuthorList() -> [Author] {
        let authorList: [Author] = [
            Author(name: "MAPPA", image: "MAPPA"),
            Author(name: "Pierrot", image: "pierott", anouns: "Bleach 2 season!"),
            Author(name: "TNK", image: "TNK", anouns: "We love you!"),
            Author(name: "A-1 Pictures", image: "A-1"),
            Author(name: "Trigger", image: "trigger"),
            Author(name: "CloverWorks", image: "CloverWorks"),
            Author(name: "SILVER LINK.", image: "silver-link")
        ]
        return authorList
    }
}
