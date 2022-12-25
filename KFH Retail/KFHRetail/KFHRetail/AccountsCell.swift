//
//  AccountsCell.swift
//  KFHRetail
//
//  Created by asmat manal on 21/12/22.
//

import UIKit



extension UILabel {

    convenience init(text: String, font: UIFont) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
    }

}

class AccountsCell: UICollectionViewCell {
    
    let accountTypeLabel = UILabel()
    let accountNumberLabel = UILabel()
    let accountBalanceLabel = UILabel()
    let availableBalanceLabel = UILabel()
    let customerNameLabel = UILabel()
    let flagImage = UIImageView(image: #imageLiteral(resourceName: "kuwaitflag") )
    let topNavigationBar = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        flagImage.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        addSubview(flagImage)
        flagImage.widthAnchor.constraint(equalToConstant: 150).isActive = true //here
        flagImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        //flagImage.backgroundColor = .purple
        flagImage.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: nil, paddingTop: 0, paddingLeft: 6, paddingBottom: 100, paddingRight: 0, width: 50, height: 45)

        
        

        addSubview(accountTypeLabel)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.09
        accountTypeLabel.attributedText = NSMutableAttributedString(string: "Current ", attributes: [NSAttributedString.Key.kern: -0.32, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        accountTypeLabel.font = UIFont(name:"Lato-Regular", size: 16)
        accountTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        accountTypeLabel.widthAnchor.constraint(equalToConstant: 61).isActive = true
        accountTypeLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        accountTypeLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12).isActive = true
        accountTypeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 44).isActive = true
        
        
        
        accountNumberLabel.frame = CGRect(x: 0, y: 0, width: 119, height: 20)
        addSubview(accountNumberLabel)
        accountNumberLabel.textColor = UIColor(red: 0.357, green: 0.561, blue: 0.42, alpha: 1)
        accountNumberLabel.font = UIFont(name: "Lato-Bold", size: 17)
        accountNumberLabel.font = UIFont.boldSystemFont(ofSize: 17)
        accountNumberLabel.text = "••••••••6778"
        accountNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        accountNumberLabel.widthAnchor.constraint(equalToConstant: 119).isActive = true
        accountNumberLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        accountNumberLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60).isActive = true
        accountNumberLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 15).isActive = true

        
     
        accountBalanceLabel.frame = CGRect(x: 0, y: 0, width: 250, height: 30)
        accountBalanceLabel.backgroundColor = .white
        accountBalanceLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        accountBalanceLabel.font = UIFont(name: "Lato-Bold", size: 25)
        accountBalanceLabel.font = UIFont.boldSystemFont(ofSize: 25)
        accountBalanceLabel.textAlignment = .right
        accountBalanceLabel.text = "500.000 KWD"
        addSubview(accountBalanceLabel)
        accountBalanceLabel.anchor(top: self.topAnchor, left: nil, bottom: nil, right: self.rightAnchor, paddingTop: 94, paddingLeft: 200, paddingBottom: 1, paddingRight: 12, width: 200, height: 30)
        
        availableBalanceLabel.frame = CGRect(x: 0, y: 0, width: 122, height: 19)
        availableBalanceLabel.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
        availableBalanceLabel.font = UIFont(name: "Lato-Regular", size: 16)
        availableBalanceLabel.textAlignment = .right
        availableBalanceLabel.text = "Available Balance"
        addSubview(availableBalanceLabel)
        availableBalanceLabel.anchor(top: accountBalanceLabel.bottomAnchor, left: nil, bottom: nil, right: self.rightAnchor, paddingTop: 1, paddingLeft: 0, paddingBottom: 10, paddingRight: 12, width: 150, height: 19)
        
       
        customerNameLabel.frame = CGRect(x: 0, y: 0, width: 52, height: 26)
        customerNameLabel.layer.backgroundColor = UIColor(red: 0.98, green: 0.953, blue: 0.878, alpha: 1).cgColor
        customerNameLabel.layer.cornerRadius = 8
        addSubview(customerNameLabel)
        customerNameLabel.translatesAutoresizingMaskIntoConstraints = false
        customerNameLabel.widthAnchor.constraint(equalToConstant: 52).isActive = true
        customerNameLabel.heightAnchor.constraint(equalToConstant: 26).isActive = true
        customerNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12).isActive = true
        customerNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 116).isActive = true
        customerNameLabel.font = UIFont(name: "Lato-Regular", size: 15)
        customerNameLabel.textAlignment = .center
        customerNameLabel.text = "Ali"

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
