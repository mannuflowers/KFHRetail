//
//  CardStatementController.swift
//  KFHRetail
//
//  Created by asmat manal on 02/01/23.
//

import UIKit

let availableLimitLabel: UIStackView = {
   var stackView = UIStackView()
    let title = UILabel()
    let rightTitle = UILabel()
    title.text = "Available Limit"
    title.font = .systemFont(ofSize: 18)
    title.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
    rightTitle.text = "8.535"
    rightTitle.textColor =  UIColor(red: 0.478, green: 0.486, blue: 0.482, alpha: 1)
    stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,SpacerView(space: 15)])
    stackView.axis = .horizontal
    stackView.backgroundColor = .white
    stackView.distribution = .fill
   return stackView
}()

let monthlyLimitLabel: UIStackView = {
   var stackView = UIStackView()
    let title = UILabel()
    let rightTitle = UILabel()
    title.text = "Monthly Limit"
    title.font = .systemFont(ofSize: 18)
    title.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
    rightTitle.text = "500.00"
    rightTitle.textColor =  UIColor(red: 0.478, green: 0.486, blue: 0.482, alpha: 1)
    stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,SpacerView(space: 15)])
    stackView.axis = .horizontal
    stackView.backgroundColor = .white
    stackView.distribution = .fill
   return stackView
}()

let lastPaymentDateLabel: UIStackView = {
   var stackView = UIStackView()
    let title = UILabel()
    title.text = "Last Payment Date"
    title.font = .systemFont(ofSize: 18)
    title.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
    stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),SpacerView(space: 15)])
    stackView.axis = .horizontal
    stackView.backgroundColor = .white
    stackView.distribution = .fill
   return stackView
}()

let lastPaymentAmountLabel: UIStackView = {
   var stackView = UIStackView()
    let title = UILabel()
    let rightTitle = UILabel()
    title.text = "Last Payment Amount"
    title.font = .systemFont(ofSize: 18)
    title.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
    rightTitle.text = "0.000"
    rightTitle.textColor =  UIColor(red: 0.478, green: 0.486, blue: 0.482, alpha: 1)
    stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,SpacerView(space: 15)])
    stackView.axis = .horizontal
    stackView.backgroundColor = .white
    stackView.distribution = .fill
   return stackView
}()

let lastStatementDateLabel: UIStackView = {
   var stackView = UIStackView()
    let title = UILabel()
    title.text = "Last Statement Date"
    title.font = .systemFont(ofSize: 18)
    title.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
    stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),SpacerView(space: 15)])
    stackView.axis = .horizontal
    stackView.backgroundColor = .white
    stackView.distribution = .fill
   return stackView
}()

let lastBalanceLabel: UIStackView = {
   var stackView = UIStackView()
    let title = UILabel()
    let rightTitle = UILabel()
    title.text = "Last Balance"
    title.font = .systemFont(ofSize: 18)
    title.textColor = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
    rightTitle.text = "0.000"
    rightTitle.textColor =  UIColor(red: 0.478, green: 0.486, blue: 0.482, alpha: 1)
    stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,SpacerView(space: 15)])
    stackView.axis = .horizontal
    stackView.backgroundColor = .white
    stackView.distribution = .fill
   return stackView
}()

let firstStackView: UIStackView = {
    var stackViewElement1 = UILabel()
    var stackViewElement2 = UILabel()
    stackViewElement1.text = "Apr"
    stackViewElement1.textColor = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
    stackViewElement1.font = .boldSystemFont(ofSize: 17)
    stackViewElement1.textAlignment = .center
    stackViewElement2.text = "2021"
    stackViewElement2.textColor = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
    stackViewElement2.font = .systemFont(ofSize: 16)
    stackViewElement2.textAlignment = .center
    var stackView = UIStackView(arrangedSubviews: [stackViewElement1,stackViewElement2])
    stackView.axis = .vertical
    return stackView
}()

let secondStackView: UIStackView = {
    var stackViewElement1 = UILabel()
    var stackViewElement2 = UILabel()
    stackViewElement1.text = "May"
    stackViewElement1.textColor = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
    stackViewElement1.font = .boldSystemFont(ofSize: 17)
    stackViewElement1.textAlignment = .center
    stackViewElement2.text = "2021"
    stackViewElement2.textColor = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
    stackViewElement2.font = .systemFont(ofSize: 16)
    stackViewElement2.textAlignment = .center
    var stackView = UIStackView(arrangedSubviews: [stackViewElement1,stackViewElement2])
    stackView.axis = .vertical
    return stackView
}()

let thirdStackView: UIStackView = {
    var stackViewElement1 = UILabel()
    var stackViewElement2 = UILabel()
    stackViewElement1.text = "June"
    stackViewElement1.textColor = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
    stackViewElement1.font = .boldSystemFont(ofSize: 17)
    stackViewElement1.textAlignment = .center
    stackViewElement2.text = "2021"
    stackViewElement2.textColor = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
    stackViewElement2.font = .systemFont(ofSize: 16)
    stackViewElement2.textAlignment = .center
    var stackView = UIStackView(arrangedSubviews: [stackViewElement1,stackViewElement2])
    stackView.axis = .vertical
    return stackView
}()

let fourthStackView: UIStackView = {
    var stackViewElement1 = UILabel()
    var stackViewElement2 = UILabel()
    stackViewElement1.text = "July"
    stackViewElement1.textColor = UIColor(red: 0.357, green: 0.561, blue: 0.42, alpha: 1)
    stackViewElement1.font = .boldSystemFont(ofSize: 17)
    stackViewElement1.textAlignment = .center
    stackViewElement2.text = "2021"
    stackViewElement2.textColor = UIColor(red: 0.357, green: 0.561, blue: 0.42, alpha: 1)
    stackViewElement2.font = .systemFont(ofSize: 16)
    stackViewElement2.textAlignment = .center
    var stackView = UIStackView(arrangedSubviews: [stackViewElement1,stackViewElement2])
    stackView.axis = .vertical
    return stackView
}()
let fifthStackView: UIStackView = {
    var stackViewElement1 = UILabel()
    var stackViewElement2 = UILabel()
    stackViewElement1.text = "Aug"
    stackViewElement1.textColor = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
    stackViewElement1.font = .boldSystemFont(ofSize: 17)
    stackViewElement1.textAlignment = .center
    stackViewElement2.text = "2021"
    stackViewElement2.textColor = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
    stackViewElement2.font = .systemFont(ofSize: 16)
    stackViewElement2.textAlignment = .center
    var stackView = UIStackView(arrangedSubviews: [stackViewElement1,stackViewElement2])
    stackView.axis = .vertical
    return stackView
}()

let sixthStackView: UIStackView = {
    var stackViewElement1 = UILabel()
    var stackViewElement2 = UILabel()
    stackViewElement1.text = "Sep"
    stackViewElement1.textColor = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
    stackViewElement1.font = .boldSystemFont(ofSize: 17)
    stackViewElement1.textAlignment = .center
    stackViewElement2.text = "2021"
    stackViewElement2.textColor = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
    stackViewElement2.font = .systemFont(ofSize: 16)
    stackViewElement2.textAlignment = .center
    var stackView = UIStackView(arrangedSubviews: [stackViewElement1,stackViewElement2])
    stackView.axis = .vertical
    return stackView
}()

let dateDesStackView: UIStackView = {
    var stackViewElement1 = UILabel()
    var stackViewElement2 = UILabel()
    var stackViewElement3 = UILabel()
    stackViewElement1.text = "Date"
    stackViewElement1.font = .boldSystemFont(ofSize: 17)
    stackViewElement1.textAlignment = .center
    stackViewElement2.text = "Description"
    stackViewElement2.font = .boldSystemFont(ofSize: 17)
    stackViewElement2.textAlignment = .center
    stackViewElement3.text = "Amount"
    stackViewElement3.font = .boldSystemFont(ofSize: 17)
    stackViewElement3.textAlignment = .center

    var stackView = UIStackView(arrangedSubviews: [stackViewElement1,stackViewElement2,stackViewElement3])
    stackView.axis = .horizontal
    stackView.distribution = .fillEqually
    stackView.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
    return stackView
}()




class CardStatementController: BaseViewController, UICollectionViewDelegateFlowLayout {
    
    
    let headerId = "headerId"
    private var cellId = "cellId"
   
    
    lazy var collectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        let cvc = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return cvc
   }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        collectionView.register(CardStatementHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)

        setNavigationBarItems(title: "Card Statement", leftNavigationItem: UIBarButtonItem(image: #imageLiteral(resourceName: "Vector (7)").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHamburgerButton)), rightNavigationItem: UIBarButtonItem(image: #imageLiteral(resourceName: "home3").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHomeButton)))

        
        let stackView = UIStackView(arrangedSubviews: [availableLimitLabel,monthlyLimitLabel,lastPaymentDateLabel,lastPaymentAmountLabel,lastStatementDateLabel,lastBalanceLabel])
        
        stackView.axis = .vertical
        view.addSubview(stackView)
        stackView.distribution = .fillEqually
        stackView.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 350, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 300)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let dateStackView = UIStackView(arrangedSubviews: [firstStackView,secondStackView,thirdStackView,fourthStackView,fifthStackView,sixthStackView])
        
        dateStackView.axis = .horizontal
        dateStackView.distribution = .fillProportionally
        view.addSubview(dateStackView)
        dateStackView.backgroundColor = .white
        dateStackView.anchor(top: stackView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: -40, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 375, height: 53)
        
        view.addSubview(dateDesStackView)
        dateDesStackView.anchor(top: dateStackView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 10, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 375, height: 53)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return.init(width: 375, height: 250)
        
    }
    
     func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        return header
    }

    @objc func handleHamburgerButton() {
        print("HamburgerButton button pressed")
        
    }

    @objc func handleHomeButton() {
        print("Hiding menu...")
    }
    
//    @objc func handleMakeStackView(title:UIView,title1:UIView) {
//        var stackView = UIStackView()
//
//    }
}

