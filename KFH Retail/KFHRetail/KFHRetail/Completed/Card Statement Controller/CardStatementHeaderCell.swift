//
//  CardStatementHeader.swift
//  KFHRetail
//
//  Created by asmat manal on 02/01/23.
//


import UIKit

class CardStatementHeaderCell: UICollectionReusableView {
    
    let horizontalController = HeaderHorizontalController()
    let imageView = UIImageView(cornerRadius: 10)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .init(cgColor: CGColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1))
        addSubview(horizontalController.view)
        horizontalController.view.fillSuperview()
        imageView.image = #imageLiteral(resourceName: "Vector (6).png")
        addSubview(imageView)
        imageView.fillSuperview(padding: UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0))
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


