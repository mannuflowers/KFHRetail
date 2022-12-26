//
//  MenuHeader.swift
//  KFHRetail
//
//  Created by asmat manal on 25/12/22.
//

import UIKit

class MenuHeader: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
       // self.frame = CGRect(x: 0, y: 0, width: 305, height: 173)
        
        var nameLabel = UILabel()
        nameLabel.frame = CGRect(x: 0, y: 0, width: 135, height: 18)
        nameLabel.backgroundColor = .white
        nameLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        nameLabel.font = UIFont(name: "Lato-Regular", size: 12)
        //nameLabel.textAlignment = .center
        nameLabel.text = "Mohammed Abdul Karim"
    
        var lastLoginLabel = UILabel()
        lastLoginLabel.frame = CGRect(x: 0, y: 0, width: 160, height: 13)
        lastLoginLabel.backgroundColor = .white
        lastLoginLabel.textColor = UIColor(red: 0.361, green: 0.361, blue: 0.361, alpha: 1)
        lastLoginLabel.font = UIFont(name: "Lato-Regular", size: 10)
        lastLoginLabel.font = UIFont.systemFont(ofSize: 12)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.98
        lastLoginLabel.textAlignment = .center
        lastLoginLabel.attributedText = NSMutableAttributedString(string: "Last Login 11/04/2021  11:41:57", attributes: [NSAttributedString.Key.kern: 0.07, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        lastLoginLabel.translatesAutoresizingMaskIntoConstraints = false
        
       
        let arrangedSubviews = [nameLabel,lastLoginLabel,UIView()]
        
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        addSubview(stackView)
        stackView.backgroundColor = .white
        stackView.frame = CGRect(x: 0, y: 0, width: 305, height: 40)
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.anchor(top: self.topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 70, paddingBottom: 0, paddingRight: 0, width: 305, height: 173)
       // stackView.distribution = .fillProportionally
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 24)
        stackView.spacing = 8
        let logOut = UIImageView(image: #imageLiteral(resourceName: "Vector (1)"))

        logOut.frame = CGRect(x: 0, y: 0, width: 18, height: 17.99)
        logOut.backgroundColor = .white
        addSubview(logOut)
        logOut.widthAnchor.constraint(equalToConstant: 18).isActive = true
        logOut.anchor(top: self.topAnchor, left: nil, bottom: nil, right: self.rightAnchor, paddingTop: 11, paddingLeft: 268, paddingBottom: 0, paddingRight: 19, width: 18, height: 18)
        
        let logo = UIImageView(image: #imageLiteral(resourceName: "ok"))
        logo.frame = CGRect(x: 0, y: 0, width: 48, height: 48)
        logo.backgroundColor = .white
        addSubview(logo)
        logo.widthAnchor.constraint(equalToConstant: 48).isActive = true
        logo.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 16, paddingBottom: 68, paddingRight: 241, width: 48, height: 48)
        
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search In Menu"
        addSubview(searchBar)
        searchBar.anchor(top: logo.bottomAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 23, paddingLeft: 10, paddingBottom: 0, paddingRight: 24, width: 285, height: 36)
        searchBar.layer.borderWidth = 1
        searchBar.layer.borderColor = UIColor(red: 255/255, green: 253/255, blue: 247/255, alpha: 1.0).cgColor
      
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
