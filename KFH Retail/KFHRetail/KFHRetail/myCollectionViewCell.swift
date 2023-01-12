//  myCollectionViewCell.swift
//  KFHRetail
//
//  Created by asmat manal on 09/01/23.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "myCollectionViewCell"
    
    private let topLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .yellowOchre
        label.font = UIFont(name: "Lato-Bold", size: 17)
        return label
    }()
    
    private let bottomLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .yellowOchre
        label.font = UIFont(name: "Lato-Regular", size: 16)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(topLabel)
        contentView.addSubview(bottomLabel)
                topLabel.anchor(top: topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 2, paddingLeft: 70, paddingBottom: 0, paddingRight: 0, width: 30, height: 30)
                bottomLabel.anchor(top: topLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: -3, paddingLeft: 15, paddingBottom: 0, paddingRight: 0, width: 45, height: 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        topLabel.frame = CGRect(x: 5, y: 5, width: 20, height: 20)
//        bottomLabel.frame = CGRect(x: 5, y: 20, width: 20, height: 15)
//    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    public func configure(with model: CollectionTableCellModel) {
        topLabel.text = model.TopTitle
        bottomLabel.text = model.BottomTitle
        
    }
    
}
