//
//  CardsCell.swift
//  KFHRetail
//
//  Created by asmat manal on 21/12/22.
//

import UIKit

class CardsCell: UICollectionViewCell {
    
    let imageView = UIImageView(image: #imageLiteral(resourceName: "card.png") )
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.clipsToBounds = true
        backgroundColor = .white
        layer.cornerRadius = 2
        //layer.shadowColor
        layer.shadowOffset = CGSizeMake(0, 0)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.23
        layer.shadowRadius = 4
        imageView.contentMode = .scaleAspectFill
        addSubview(imageView)
        imageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

