//
//  StatementHeader.swift
//  KFHRetail
//
//  Created by asmat manal on 11/01/23.
//

import UIKit

class StatementHeader: UITableViewHeaderFooterView {
    let title1 = UILabel()
    let title2 = UILabel()
    let title3 = UILabel()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .floroGreen
        configureContents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureContents() {
        func configureContents() {
            title1.translatesAutoresizingMaskIntoConstraints = false
            title2.translatesAutoresizingMaskIntoConstraints = false
            title3.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(title1)
            contentView.addSubview(title2)
            contentView.addSubview(title3)
            NSLayoutConstraint.activate([
                title1.heightAnchor.constraint(equalToConstant: 30),
                title1.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor,
                                                constant: 8),
                title1.trailingAnchor.constraint(equalTo:
                                                    contentView.layoutMarginsGuide.trailingAnchor),
                title1.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
            ])
        }
    }
    
    
}
