//
//  HeaderCollectionReusableView.swift
//  CollectionViewTest
//
//  Created by Илья Казначеев on 01.11.2022.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    
    static let reuseId = "SectionHeader"
    
    public var title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        customizeElements()
        setupConstrainsts()
    }
    
    private func customizeElements() {
        title.textColor = .black
        title.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupConstrainsts() {
        addSubview(title)
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            title.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 12),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            title.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 12)
        ])

    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
        
}
