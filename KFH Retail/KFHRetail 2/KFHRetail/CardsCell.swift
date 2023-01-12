//
//  CardsCell.swift
//  KFHRetail
//
//  Created by asmat manal on 21/12/22.
//

import UIKit

class CardsCell: UICollectionViewCell {
    
    
    let containerView: UIImageView = {
        let containerView = UIImageView()
        containerView.frame = CGRect(x: 0, y: 0, width: 347, height: 215)//
        containerView.translatesAutoresizingMaskIntoConstraints = false
        return containerView
    }()
    
    let triangleImageView: UIImageView = {
        let imageview = UIImageView(image: #imageLiteral(resourceName: "Vector 1.png") )
        return imageview
    }()
    
    let usedLimitAmountLabel: UILabel = {
        var view = UILabel()
//        view.frame = CGRect(x: 0, y: 0, width: 82, height: 26)
        view.backgroundColor = .white
        view.textColor = UIColor.black
        view.font = UIFont(name: "Lato-Bold", size: 22)
        view.textAlignment = .center
        return view
    }()
    
    let usedLimitLabel: UILabel = {
        var view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 61, height: 16)
        view.backgroundColor = .white
        view.textColor = UIColor.veryLightGray
        view.font = UIFont(name: "Lato-Regular", size: 13)
        view.textAlignment = .center
        view.text = "Used Limit"
        return view
    }()
    
    let availableLimitAmountLabel: UILabel = {
        var view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 200, height: 26)
        view.backgroundColor = .white
        view.textColor = UIColor.black
        view.font = UIFont(name: "Lato-Bold", size: 22)
        view.textAlignment = .right
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 141).isActive = true
        view.heightAnchor.constraint(equalToConstant: 26).isActive = true
        return view
    }()
    
    let availableLimitLabel: UILabel = {
        var view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 84, height: 16)
        view.backgroundColor = .white
        view.textColor = UIColor.veryLightGray
        view.font = UIFont(name: "Lato-Regular", size: 13)
        view.textAlignment = .right
        view.text = "Available Limit"
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.heightAnchor.constraint(equalToConstant: 16).isActive = true
        return view
    }()
    
    
    let nameLabel: UILabel = {
        var view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 141, height: 16)
        view.backgroundColor = .white
        view.textColor = UIColor.veryLightGray
        view.font = UIFont(name: "Lato-Regular", size: 13)
        view.textAlignment = .right
        return view
    }()
    
    let cardNumberLabel: UILabel = {
        var view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: 150, height: 100)
        view.backgroundColor = .white
        view.textColor = UIColor.cactusGreen
        view.font = UIFont(name: "ocraextended", size: 24)
        view.textAlignment = .right
        return view
    }()
    
    let cardTypeImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .white
        view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        view.contentMode = .scaleAspectFit
        view.layer.cornerRadius = 1.67
        return view
    }()
    
    let button: UIButton = {
      let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        let imageV = UIImage(named: "Light")
        button.setImage(imageV, for: .normal)
        button.backgroundColor = .white
        button.addTarget(CardsCell.self, action: #selector(handle3Dots), for: .touchUpInside)
        return button
    }()
    
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        containerView.addSubview(triangleImageView)
        containerView.addSubview(usedLimitAmountLabel)
        containerView.addSubview(usedLimitLabel)
        containerView.addSubview(availableLimitAmountLabel)
        containerView.addSubview(availableLimitLabel)
        containerView.addSubview(cardNumberLabel)
        containerView.addSubview(cardTypeImageView)
        containerView.addSubview(nameLabel)
        containerView.addSubview(button)
        addSubview(containerView)
        
        
        NSLayoutConstraint.activate([
            containerView.widthAnchor.constraint(equalToConstant: 347),
            containerView.heightAnchor.constraint(equalToConstant: 215),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            triangleImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            triangleImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            triangleImageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            triangleImageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
        
        usedLimitLabel.anchor(top: nil, left: containerView.leftAnchor, bottom: containerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 16, paddingBottom: 6, paddingRight: 0, width: 90, height: 16)
        usedLimitAmountLabel.anchor(top: nil, left: containerView.leftAnchor, bottom: containerView.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 16, paddingBottom: 24, paddingRight: 0, width: 90, height: 26)
        availableLimitLabel.anchor(top: nil, left: nil, bottom: containerView.bottomAnchor, right: containerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 6, paddingRight: 18, width: 350, height: 16)
        availableLimitAmountLabel.anchor(top: nil, left: nil, bottom: containerView.bottomAnchor, right: containerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 24, paddingRight: 16, width: 200, height: 26)
        cardNumberLabel.anchor(top: nil, left: nil, bottom: nameLabel.topAnchor, right: containerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 6, paddingRight: 18, width: 150, height: 25)
        nameLabel.anchor(top: nil, left: nil, bottom: availableLimitAmountLabel.topAnchor, right: containerView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 18, paddingRight: 16, width: 141, height: 16)
        cardTypeImageView.anchor(top: button.bottomAnchor, left: nil, bottom: nil, right: containerView.rightAnchor, paddingTop: 14, paddingLeft: 0, paddingBottom: 0, paddingRight: 20, width: CGFloat(width), height: CGFloat(height))
        button.anchor(top: containerView.topAnchor, left: nil, bottom: nil, right: containerView.rightAnchor, paddingTop: 20, paddingLeft: 0, paddingBottom: 0, paddingRight: 20, width: 24, height: 24)
        
       
        
        
    }
    
    
    @objc func handle3Dots() {
        print("dots pressed..")
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented") //up
    }
}

