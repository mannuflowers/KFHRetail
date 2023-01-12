//
//  DetailsController.swift
//  KFHRetail
//
//  Created by asmat manal on 02/01/23.
//

import UIKit



class DetailsController: BaseViewController, UICollectionViewDelegateFlowLayout {
        
    lazy var collectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        let cvc = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //cvc.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: view.frame.height)
        cvc.backgroundColor = UIColor.systemRed
        cvc.delegate = self
        return cvc
   }()
    
    let CreditAccountNumber: UIStackView = {
        
        var stackView = UIStackView()
        let title = UILabel()
        let title2 = UILabel()
        title.text = "    Credit Account Number:"
        title2.text = "    XXXXXXXXX1933"
        title.font = UIFont(name: "Lato-Regular", size: 15)
        title2.font = UIFont(name: "Lato-Bold", size: 16)
        title.textColor = .fontGray
        title2.textColor = .darkGray
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 12),title,SpacerView(space: 4),title2,SpacerView(space: 12)])
        stackView.axis = .vertical
        stackView.backgroundColor = .white
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let CreditAccountHolderNumber: UIStackView = {
        var stackView = UIStackView()
        let title = UILabel()
        let title2 = UILabel()
        title.text = "     Credit Account Holder Number:"
        title.font = UIFont(name: "Lato-Regular", size: 15)
        title2.text = "     Mohammed Umar"
        title2.font = UIFont(name: "Lato-Bold", size: 17)
        title.textColor = .fontGray
        title2.textColor = .darkGray
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 12),title,SpacerView(space: 4),title2,SpacerView(space: 12)])
        stackView.axis = .vertical
        stackView.backgroundColor = .white
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    
    let TransactionType: UIStackView = {
        var stackView = UIStackView()
        let title = UILabel()
        let title2 = UILabel()
        title.text = "     Transaction Type:"
        title2.text = "     Credit"
        title.font = UIFont(name: "Lato-Regular", size: 15)
        title2.font = UIFont(name: "Lato-Bold", size: 17)
        title.textColor = .fontGray
        title2.textColor = .darkGray
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 12),title,SpacerView(space: 4),title2,SpacerView(space: 12)])
        stackView.axis = .vertical
        stackView.backgroundColor = .white
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let DebitAccountNumber: UIStackView = {
        
        var stackView = UIStackView()
        let title = UILabel()
        let title2 = UILabel()
        title.text = "     Debit Account Number:"
        title2.text = "     XXXXXXXXXXXX1933"
        title.font = UIFont(name: "Lato-Regular", size: 15)
        title2.font = UIFont(name: "Lato-Bold", size: 17)
        title.textColor = .fontGray
        title2.textColor = .darkGray
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 12),title,SpacerView(space: 4),title2,SpacerView(space: 12)])
        stackView.axis = .vertical
        stackView.backgroundColor = .white
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let DebitAccountHolderNumber: UIStackView = {
        var stackView = UIStackView()
        let title = UILabel()
        let title2 = UILabel()
        title.text = "     Debit Account Holder Number:"
        title2.text = "     Mohammed Ali"
        title.font = UIFont(name: "Lato-Regular", size: 15)
        title2.font = UIFont(name: "Lato-Bold", size: 17)
        title.textColor = .fontGray
        title2.textColor = .darkGray
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 12),title,SpacerView(space: 4),title2,SpacerView(space: 12)])
        stackView.axis = .vertical
        stackView.backgroundColor = .white
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let DTransactionType: UIStackView = {
        var stackView = UIStackView()
        let title = UILabel()
        let title2 = UILabel()
        title.text = "     Transaction Type:"
        title2.text = "     Debit"
        title.font = UIFont(name: "Lato-Regular", size: 15)
        title2.font = UIFont(name: "Lato-Bold", size: 17)
        title.textColor = .fontGray
        title2.textColor = .darkGray
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 12),title,SpacerView(space: 4),title2,SpacerView(space: 12)])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .white
        return stackView
    }()
    
    let AccountBalance: UIStackView = {
        var stackView = UIStackView()
        let title = UILabel()
        let title2 = UILabel()
        title.text = "     Account Balance:"
        title.font = UIFont(name: "Lato-Regular", size: 15)
        title2.text = "     3,233.86"
        title2.font = UIFont(name: "Lato-Bold", size: 17)
        title.textColor = .fontGray
        title2.textColor = .darkGray
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 12),title,SpacerView(space: 4),title2,SpacerView(space: 12)])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .white
        return stackView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let stackView = UIStackView(arrangedSubviews: [CreditAccountNumber,CreditAccountHolderNumber,TransactionType,DebitAccountNumber,DebitAccountHolderNumber,DTransactionType])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        stackView.anchor(top: whiteView.bottomAnchor, left:  nil, bottom: nil, right: nil, paddingTop: 24, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 404)

        view.addSubview(AccountBalance)
        AccountBalance.anchor(top: stackView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 24, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 67)
        
        setNavigationBarItems(title: "Details", leftNavigationItem: "Vector (7)", rightNavigationItem: "Light")
        
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont(name: "Lato-Bold", size: 18)!, NSAttributedString.Key.foregroundColor: UIColor.black]

    }
    
}









