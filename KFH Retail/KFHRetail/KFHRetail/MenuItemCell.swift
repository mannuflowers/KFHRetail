//
//  MenuItemCell.swift
//  KFHRetail
//
//  Created by asmat manal on 26/12/22.
//

import UIKit

class IconImageView: UIImageView {
    override var intrinsicContentSize: CGSize {
        return .init(width: 25, height: 25)
    }
}

class MenuItemCell: UITableViewCell {
    
    
    
    let iconImageView: IconImageView = {
        let iv = IconImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = #imageLiteral(resourceName: "FinanceServices")
        return iv
    }()

    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 5)
        label.textColor = .white
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .white
        
        let stackView = UIStackView(arrangedSubviews: [iconImageView,titleLabel])
       // stackView.frame = CGRect(x: 0, y: 0, width: 80, height: 72)
        stackView.backgroundColor = UIColor(red: 0.357, green: 0.561, blue: 0.42, alpha: 1)
        addSubview(stackView)
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .left
        titleLabel.numberOfLines = 2
        
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        //stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
       // stackView.trailingAnchor.constraint (equalTo: trailingAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        stackView.isLayoutMarginsRelativeArrangement = true
        
        stackView.layoutMargins = UIEdgeInsets(top: 15, left: 24, bottom: 10, right: 24)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
