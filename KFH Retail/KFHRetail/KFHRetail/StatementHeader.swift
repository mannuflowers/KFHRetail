//
//  StatementHeader.swift
//  KFHRetail
//
//  Created by asmat manal on 11/01/23.
//

import UIKit

//let dateDesStackView: UIStackView = {
//    var stackViewElement1 = UILabel()
//    var stackViewElement2 = UILabel()
//    var stackViewElement3 = UILabel()
//    stackViewElement1.text = "Date"
//    stackViewElement1.font = UIFont(name: "Lato-Bold", size: 17)
//    stackViewElement1.textAlignment = .center
//    stackViewElement2.text = "Description"
//    stackViewElement2.font = UIFont(name: "Lato-Bold", size: 17)
//    stackViewElement2.textAlignment = .center
//    stackViewElement3.text = "Amount"
//    stackViewElement3.font = UIFont(name: "Lato-Bold", size: 17)
//    stackViewElement3.textAlignment = .center
//
//    var stackView = UIStackView(arrangedSubviews: [stackViewElement1,stackViewElement2,stackViewElement3])
//    stackView.axis = .horizontal
//    stackView.distribution = .fillEqually
//    stackView.backgroundColor = UIColor.backgroundGray
//    return stackView
//}()

class StatementHeader: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(dateDesStackView)
        dateDesStackView.anchor(top: FinalDateStackView.bottomAnchor, left:  nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: frame.width, height: 52)    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
