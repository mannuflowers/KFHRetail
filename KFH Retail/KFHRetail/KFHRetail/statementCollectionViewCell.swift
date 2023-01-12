//
//  statementCollectionViewCell.swift
//  KFHRetail
//
//  Created by asmat manal on 11/01/23.
//

import UIKit

class statementCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "stackCollectionViewCell"
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont(name: "Lato-Bold", size: 16)
        return label
    }()
    
    private let kindLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont(name: "Lato-Regular", size: 15)
        label.textColor = UIColor.someGray
        return label
    }()
    
    private let toLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont(name: "Lato-Regular", size: 15)
        label.textColor = UIColor.someGray
        return label
    }()
    
    private let costLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont(name: "Lato-Bold", size: 16)
        return label
    }()
    
    private let imageLabel: UIImageView = {
        let label = UIImageView()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(dateLabel)
        contentView.addSubview(kindLabel)
        contentView.addSubview(toLabel)
        contentView.addSubview(costLabel)
        
        dateLabel.anchor(top: contentView.topAnchor, left: contentView.leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 100, height: 20)
        kindLabel.anchor(top: dateLabel.topAnchor, left: contentView.leftAnchor, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 200, height: 20)
        toLabel.anchor(top: kindLabel.topAnchor, left: contentView.leftAnchor, bottom: nil, right: nil, paddingTop: 25, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 200, height: 20)
        costLabel.anchor(top: contentView.topAnchor, left: nil, bottom: nil, right: contentView.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 35, width: 100, height: 20)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    public func configure(with model: StatementTableCellModel) {
        dateLabel.text = model.dateTitle
        kindLabel.text = model.kindTitle
        toLabel.text = model.toTitle
        costLabel.text = model.costTitle
        imageLabel.image = UIImage(named: model.imageView)
        costLabel.textColor = model.costColor
        
        
    }
    
}
