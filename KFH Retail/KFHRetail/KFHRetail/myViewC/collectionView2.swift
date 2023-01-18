//
//  collectionView2.swift
//  KFHRetail
//
//  Created by asmat manal on 18/01/23.
//
import UIKit

class collectionView2: UICollectionViewCell {
    
    static let identifier = "collectionView2"
    
    private let leftLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont(name: "Lato-Regular", size: 16)
        label.textColor = .fontGray
        return label
    }()
    
    private let rightLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = UIFont(name: "Lato-Bold", size: 16)
        label.textColor = UIColor.someGray
        return label
    }()
    
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(leftLabel)
        contentView.addSubview(rightLabel)
        
        
        
        leftLabel.anchor(top: contentView.topAnchor, left: contentView.leftAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 150, height: 20)
        rightLabel.anchor(top: contentView.topAnchor, left: contentView.rightAnchor, bottom: nil, right: nil, paddingTop: 10, paddingLeft: -200, paddingBottom: 0, paddingRight: 10, width: 200, height: 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    public func configure(with model: ListCellModel) {
        leftLabel.text = model.LeftTitle
        rightLabel.text = model.RightTitle
        
        
    }
    
}
