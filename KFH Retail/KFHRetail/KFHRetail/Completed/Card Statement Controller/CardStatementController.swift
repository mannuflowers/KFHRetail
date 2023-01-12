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
    rightTitle.text = "8.535"
    title.font = UIFont(name: "Lato-Regular", size: 16)
    title.textColor = UIColor.fontGray
    rightTitle.font = UIFont(name: "Lato-Bold", size: 16)
    rightTitle.textColor =  UIColor.someGray
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
    rightTitle.text = "500.00"
    title.font = UIFont(name: "Lato-Regular", size: 16)
    title.textColor = UIColor.fontGray
    rightTitle.font = UIFont(name: "Lato-Bold", size: 16)
    rightTitle.textColor =  UIColor.someGray
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
    title.font = UIFont(name: "Lato-Regular", size: 16)
    title.textColor = UIColor.fontGray
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
    rightTitle.text = "0.000"
    title.font = UIFont(name: "Lato-Regular", size: 16)
    title.textColor = UIColor.fontGray
    rightTitle.font = UIFont(name: "Lato-Bold", size: 16)
    rightTitle.textColor =  UIColor.someGray
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
    title.font = UIFont(name: "Lato-Regular", size: 16)
    title.textColor = UIColor.fontGray
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
    rightTitle.text = "0.000"
    title.font = UIFont(name: "Lato-Regular", size: 16)
    title.textColor = UIColor.fontGray
    rightTitle.font = UIFont(name: "Lato-Bold", size: 16)
    rightTitle.textColor =  UIColor.someGray
    stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,SpacerView(space: 15)])
    stackView.axis = .horizontal
    stackView.backgroundColor = .white
    stackView.distribution = .fill
   return stackView
}()

let FinalDateStackView: UIStackView = {
    var firstStackView = handleMakeStackView(title: "Apr", title1: "2021", color: .yellowOchre)
    var secondStackView = handleMakeStackView(title: "May", title1: "2021", color: .yellowOchre)
    var thirdStackView = handleMakeStackView(title: "June", title1: "2021", color: .yellowOchre)
    var fourthStackView = handleMakeStackView(title: "July", title1: "2021", color: .cactusGreen)
    var fifthStackView = handleMakeStackView(title: "Aug", title1: "2021", color: .yellowOchre)
    var sixthStackView = handleMakeStackView(title: "Sep", title1: "2021", color: .yellowOchre)
    let dateStackView = UIStackView(arrangedSubviews: [firstStackView,secondStackView,thirdStackView,fourthStackView,fifthStackView,sixthStackView])
    dateStackView.axis = .horizontal
    dateStackView.distribution = .fillProportionally
    return dateStackView
}()

let dateDesStackView: UIStackView = {
    var stackViewElement1 = UILabel()
    var stackViewElement2 = UILabel()
    var stackViewElement3 = UILabel()
    stackViewElement1.text = "Date"
    stackViewElement1.font = UIFont(name: "Lato-Bold", size: 17)
    stackViewElement1.textAlignment = .center
    stackViewElement2.text = "Description"
    stackViewElement2.font = UIFont(name: "Lato-Bold", size: 17)
    stackViewElement2.textAlignment = .center
    stackViewElement3.text = "Amount"
    stackViewElement3.font = UIFont(name: "Lato-Bold", size: 17)
    stackViewElement3.textAlignment = .center

    var stackView = UIStackView(arrangedSubviews: [stackViewElement1,stackViewElement2,stackViewElement3])
    stackView.axis = .horizontal
    stackView.distribution = .fillEqually
    stackView.backgroundColor = UIColor.backgroundGray
    return stackView
}()

let statementStackView: UIStackView = {
    
    let first = createaMiniStatementStackView(date: "", Kind: "   Previous Balance", Cost: "100.000 KWD", CostColor: .maroonRed)
    let second = createaMiniStatementStackView(date: "   23-04-2021", Kind: "   Previous Balance", Cost: "9.99 USD", CostColor: .maroonRed)
    
    let stackView = UIStackView(arrangedSubviews: [first,second])
    stackView.axis = .vertical
    stackView.backgroundColor = .white
    stackView.distribution = .fillEqually
    return stackView
}()



class CardStatementController: BaseViewController, UICollectionViewDelegate {
    
    
    let headerId = "headerId"
    private var cellId = "cellId"
   
    
    lazy var collectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
       // let cvc = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 0 // this is for spacing between cells
        layout.itemSize = CGSize(width: view.frame.width, height: view.frame.height) //this is for cell size
        let cvc = UICollectionView(frame: CGRect(origin: CGPointMake(0, 100), size: CGSize(width: view.frame.width, height: view.frame.height - 100)), collectionViewLayout: layout)
        return cvc
   }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        collectionView.register(CardStatementHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
        
        collectionView.frame = CGRect(x: 0, y: 100, width: view.frame.width, height: view.frame.height - 100)
        contentView.addSubview(collectionView)
        collectionView.backgroundColor = .backgroundGray
        setNavigationBarItems(title: "Card Statement", leftNavigationItem: UIBarButtonItem(image: #imageLiteral(resourceName: "Vector (7)").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHamburgerButton)), rightNavigationItem: UIBarButtonItem(image: #imageLiteral(resourceName: "Light").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHomeButton)))

        
        let stackView = UIStackView(arrangedSubviews: [availableLimitLabel,monthlyLimitLabel,lastPaymentDateLabel,lastPaymentAmountLabel,lastStatementDateLabel,lastBalanceLabel])
        
        stackView.axis = .vertical
        view.addSubview(stackView)
        stackView.distribution = .fillEqually
        stackView.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 325, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 266)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(FinalDateStackView)
        FinalDateStackView.backgroundColor = .white
        FinalDateStackView.anchor(top: stackView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 16, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 53)
        
        view.addSubview(dateDesStackView)
        dateDesStackView.anchor(top: FinalDateStackView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 53)
        
        view.addSubview(statementStackView)
        statementStackView.anchor(top: dateDesStackView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 136)
    }
    

    @objc func handleHamburgerButton() {
        print("HamburgerButton button pressed")
        
    }

    @objc func handleHomeButton() {
        print("Hiding menu...")
    }
    
}

func handleMakeStackView(title:String,title1:String,color:UIColor)->UIStackView {
    let stackViewElement1 = UILabel()
    let stackViewElement2 = UILabel()
    stackViewElement1.text = title
    stackViewElement1.textColor = color
    stackViewElement1.font = UIFont(name: "Lato-Bold", size: 17)
    stackViewElement1.textAlignment = .center
    stackViewElement2.text = title1
    stackViewElement2.textColor = color
    stackViewElement2.font = UIFont(name: "Lato-Regular", size: 16)
    stackViewElement2.textAlignment = .center
    let stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),stackViewElement1,SpacerView(space: 5),stackViewElement2,SpacerView(space: 4)])
    stackView.axis = .vertical
    return stackView
}

extension CardStatementController: UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return.init(width: 375, height: 250)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        return header
    }
}

func createaMiniStatementStackView(date: String,Kind: String,Cost: String,CostColor:UIColor)->UIStackView{
    
    let dateLabel = UILabel()
    let KindLabel = UILabel()
    let CostLabel = UILabel()

    dateLabel.text = date
    dateLabel.font = UIFont(name: "Lato-Bold", size: 16)
    KindLabel.text = Kind
    KindLabel.font = UIFont(name: "Lato-Regular", size: 15)
    KindLabel.textColor = UIColor.someGray
    CostLabel.text = Cost
    CostLabel.font = UIFont(name: "Lato-Bold", size: 16)
    CostLabel.textAlignment = .right
    CostLabel.textColor = CostColor
    
    let stackView = UIStackView(arrangedSubviews: [dateLabel,SpacerView(space: 157),CostLabel,SpacerView(space: 10)])
    stackView.axis = .horizontal
    stackView.backgroundColor = .white
    
    let TotalstackView = UIStackView(arrangedSubviews: [SpacerView(space: 2),stackView,SpacerView(space: 2),KindLabel])
    TotalstackView.axis = .vertical
    TotalstackView.distribution = .fillEqually
    TotalstackView.backgroundColor = .white
    return TotalstackView
}

