//
//  AnimeMainTableViewCell.swift
//  HW6
//
//  Created by Сергей Бабич on 20.10.2022.
//

import UIKit

class AnimeMainTableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private let animeEnNameLabel: UILabel = .init()
    private let animeJaNameLabel: UILabel = .init()
    private let episodesLabel: UILabel = .init()
    
    func set(anime: Anime) {
        animeEnNameLabel.text = anime.nameEn
        animeJaNameLabel.text = anime.nameJa
        episodesLabel.text = "Episodes: \(anime.episodes)"
    }
    
    private func setupUI() {
        animeEnNameLabel.font = .boldSystemFont(ofSize: 18)
        episodesLabel.font = .systemFont(ofSize: 14)
        animeJaNameLabel.font = .systemFont(ofSize: 10)
        animeJaNameLabel.adjustsFontSizeToFitWidth = true
        animeJaNameLabel.textAlignment = .right
        
        setConstraints()
    }
    
    private func setSubviews(_ subviews: UIView...) {
        subviews.forEach { contentView.addSubview($0) }
    }
    
    private func setConstraints() {
        let stackView = UIStackView(arrangedSubviews: [
            animeEnNameLabel, episodesLabel
        ])
        stackView.axis = .vertical
        stackView.alignment = .leading
        
        setSubviews(stackView, animeJaNameLabel)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
        ])
        
        animeJaNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animeJaNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            animeJaNameLabel.centerYAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            animeJaNameLabel.widthAnchor.constraint(equalToConstant: 180),
        ])
    }
    
    func didSelect(anime: Anime, at indexPath: IndexPath) {
        print(
              """
              English name: \(anime.nameEn)
              Japanse name: \(anime.nameJa)
              Count of episodes: \(anime.episodes)
              Genres: \(
              anime.genre.map { $0.rawValue }.joined(separator: ", ")
              )
              Status: \(anime.status)
              
              """
        )
    }
}
