//
//  Anime.swift
//  HW6
//
//  Created by Сергей Бабич on 20.10.2022.
//

enum Status: String {
    case finished
    case ongoing
}

enum Genre: String {
    case action
    case adventure
    case fantasy
    case supernatural
    case drama
    case romance
    case sciFi = "sci-fi"
    case comedy
}

struct Anime {
    let nameEn: String
    let nameJa: String
    let genre: [Genre]
    let episodes: Int
    let status: Status
}

extension Anime {
    static func getAnimeList() -> [Anime] {
        let animeList: [Anime] = [
            Anime(
                nameEn: "Naruto",
                nameJa: "ナルト",
                genre: [.action, .adventure, .fantasy],
                episodes: 220,
                status: .finished
            ),
            Anime(
                nameEn: "Chainsaw Man",
                nameJa: "チェンソーマン",
                genre: [.action, .supernatural],
                episodes: 12,
                status: .ongoing
            ),
            Anime(
                nameEn: "School Days",
                nameJa: "スクールデイズ",
                genre: [.drama, .romance],
                episodes: 12,
                status: .finished
            ),
            Anime(
                nameEn: "Darling in the FranXX",
                nameJa: "ダーリン・イン・ザ・フランキス",
                genre: [.action, .drama, .romance, .sciFi],
                episodes: 24,
                status: .finished
            ),
            Anime(
                nameEn: "Kokoro Connect",
                nameJa: "ココロコネクト",
                genre: [.drama, .romance, .supernatural],
                episodes: 13,
                status: .finished
            ),
            Anime(
                nameEn: "Grand Blue",
                nameJa: "ぐらんぶる",
                genre: [.comedy],
                episodes: 12,
                status: .finished
            ),
            Anime(
                nameEn: "Witch Hunter Robin",
                nameJa: "ウイッチハンターロビン",
                genre: [.action, .drama, .supernatural],
                episodes: 26,
                status: .finished
            ),
            Anime(
                nameEn: "Cyberpunk: Edgerunners",
                nameJa: "CYBERPUNK: EDGERUNNERS",
                genre: [.action, .sciFi],
                episodes: 10,
                status: .finished
            ),
            Anime(
                nameEn: "Charlotte",
                nameJa: "シャーロット",
                genre: [.drama],
                episodes: 13,
                status: .finished
            ),
            Anime(
                nameEn: "Fate/Prototype",
                nameJa: "Fate/Prototype",
                genre: [.action, .drama, .supernatural, .drama],
                episodes: 1,
                status: .finished
            ),
            Anime(
                nameEn: "Haikyuu!! To the Top",
                nameJa: "ハイキュー!! TO THE TOP",
                genre: [.action, .fantasy, .romance, .supernatural],
                episodes: 13,
                status: .finished
            ),
        ]
        
        return animeList
    }
}
