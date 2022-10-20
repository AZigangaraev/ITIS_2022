//
//  ExpandedModel.swift
//  HW6
//
//  Created by Сергей Бабич on 20.10.2022.
//

struct ExpandedModel {
    let animeList: [Anime]
    let authorList: [Author]
}

extension ExpandedModel {
    static func getModel() -> ExpandedModel {
        return ExpandedModel(animeList: Anime.getAnimeList(), authorList: Author.getAuthorList())
    }
}
