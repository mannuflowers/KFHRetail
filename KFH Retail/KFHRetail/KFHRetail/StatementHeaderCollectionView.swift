//
//  StatementHeaderCollectionView.swift
//  KFHRetail
//
//  Created by asmat manal on 12/01/23.
//

import UIKit

class StatementHeaderCollectionView: UICollectionReusableView {
    
    static let identifier = "StatementHeaderCollectionView"
    
    let dateLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.text = "Date"
        view.font = UIFont(name: "Lato-Bold", size: 17)
        view.textColor = UIColor.black
        return view
    }()
    
    let descriptionLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .center
        view.text = "Description"
        view.font = UIFont(name: "Lato-Bold", size: 17)
        view.textColor = UIColor.black
        return view
    }()
    
    let amountLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .right
        view.text = "Amount"
        view.font = UIFont(name: "Lato-Bold", size: 17)
        view.textColor = UIColor.black
        return view
    }()
    
    public func configure(){
        
        backgroundColor = .backgroundGray
        addSubview(dateLabel)
        dateLabel.anchor(top: nil, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: 10, height: 7)
        addSubview(descriptionLabel)
        descriptionLabel.anchor(top: nil, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 10, height: 7)
        addSubview(amountLabel)
        amountLabel.anchor(top: nil, left: nil, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 10, width: 10, height: 7)
        
    }
}
