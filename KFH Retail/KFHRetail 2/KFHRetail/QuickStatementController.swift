//
//  QuickStatementController.swift
//  KFHRetail
//
//  Created by asmat manal on 05/01/23.
//

import UIKit

class QuickStatementController: BaseViewController {
    
    lazy var collectionViewC: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        let cvc = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cvc.backgroundColor = UIColor.backgroundGray
        return cvc
   }()
    
    
    let accountTypeStack: UIStackView = {
       var stackView = UIStackView()
        let title = UILabel()
        let rightTitle = UILabel()
        title.text = "Account Type"
        title.font = UIFont(name: "Lato-Regular", size: 16)
        title.textAlignment = .left
        title.textColor = UIColor.fontGray
        rightTitle.text = "Investment Saving Account"
        rightTitle.font = UIFont(name: "Lato-Bold", size: 16)
        rightTitle.textColor =  UIColor.someGray
        rightTitle.textAlignment = .right
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()
    
    let totalBalanceStack: UIStackView = {
       var stackView = UIStackView()
        let title = UILabel()
        let rightTitle = UILabel()
        title.text = "Total Balance"
        title.font = UIFont(name: "Lato-Regular", size: 16)
        title.textAlignment = .left
        title.textColor = UIColor.fontGray
        rightTitle.text = "1,150.000 KWD"
        rightTitle.font = UIFont(name: "Lato-Bold", size: 16)
        rightTitle.textColor =  UIColor.someGray
        rightTitle.textAlignment = .right
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()
    
    let availableBalanceStack: UIStackView = {
       var stackView = UIStackView()
        let title = UILabel()
        let rightTitle = UILabel()
        title.text = "Available Balance"
        title.font = UIFont(name: "Lato-Regular", size: 16)
        title.textAlignment = .left
        title.textColor = UIColor.fontGray
        rightTitle.text = "1,150.000 KWD"
        rightTitle.font = UIFont(name: "Lato-Bold", size: 16)
        rightTitle.textColor =  UIColor.someGray
        rightTitle.textAlignment = .right
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()
    
    let holdAmountStack: UIStackView = {
       var stackView = UIStackView()
        let title = UILabel()
        let rightTitle = UILabel()
        title.text = "Hold Amount"
        title.font = UIFont(name: "Lato-Regular", size: 16)
        title.textAlignment = .left
        title.textColor = UIColor.fontGray
        rightTitle.text = "0.000 KWD"
        rightTitle.font = UIFont(name: "Lato-Bold", size: 16)
        rightTitle.textColor =  UIColor.someGray
        rightTitle.textAlignment = .right
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stackView = UIStackView(arrangedSubviews: [accountTypeStack,totalBalanceStack,availableBalanceStack,holdAmountStack])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        stackView.anchor(top: whiteView.bottomAnchor, left:  nil, bottom: nil, right: nil, paddingTop: 24, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 180)
        
        setNavigationBarItems(title: "••••••••8901", leftNavigationItem: UIBarButtonItem(image: #imageLiteral(resourceName: "Vector (7)").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHamburgerButton)), rightNavigationItem: UIBarButtonItem(image: #imageLiteral(resourceName: "Light").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHamburgerButton)))
        
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont(name: "Lato-Bold", size: 20)!, NSAttributedString.Key.foregroundColor: UIColor.black]
        let firstStackView1 = createQuickStatementStackView(date: "2020-11-12", Kind: "Other", To: "Swift Chgs - Int-003-8314791", Cost: "0.450 KWD", CostColor: .red)
        let secondStackView2 = createQuickStatementStackView(date: "2020-11-12", Kind: "Funt Transfer - Internet", To: "Swift Chgs - Int-003-8314791", Cost: "0.450 KWD", CostColor: .green)
        let thirdStackView3 = createQuickStatementStackView(date: "2020-11-12", Kind: "Funt Transfer - Internet", To: "Swift Chgs - Int-003-8314791", Cost: "0.450 KWD", CostColor: .green)
        let fourthStackView1 = createQuickStatementStackView(date: "2020-11-12", Kind: "Funt Transfer - Internet", To: "Swift Chgs - Int-003-8314791", Cost: "0.450 KWD", CostColor: .green)
        
       // let finalStackView = UIStackView(arrangedSubviews: secondStackView2,thirdStackView3)
    }
    
    
    func createQuickStatementStackView(date: String,Kind: String,To: String,Cost: String,CostColor:UIColor)->UIStackView{
        
        let dateLabel = UILabel()
        let KindLabel = UILabel()
        let ToLabel = UILabel()
        let CostLabel = UILabel()
        let imageView = UIImageView()

        dateLabel.text = date
        dateLabel.font = UIFont(name: "Lato-Bold", size: 16)
        KindLabel.text = Kind
        KindLabel.font = UIFont(name: "Lato-Regular", size: 15)
        KindLabel.textColor = UIColor.someGray
        ToLabel.text = To
        ToLabel.font = UIFont(name: "Lato-Regular", size: 15)
        ToLabel.textColor = UIColor.someGray
        CostLabel.text = Cost
        CostLabel.font = UIFont(name: "Lato-Bold", size: 16)
        CostLabel.textColor = CostColor
        imageView.image = UIImage(named: "Vector")
        
        let stackView = UIStackView(arrangedSubviews: [dateLabel,SpacerView(space: 137),CostLabel,SpacerView(space: 17),imageView])
        
        let TotalstackView = UIStackView(arrangedSubviews: [SpacerView(space: 14),stackView,SpacerView(space: 7),KindLabel,SpacerView(space: 7),ToLabel,SpacerView(space: 12)])
    
        return TotalstackView
    }
    
    @objc open func handleHamburgerButton() {
        print("HamburgerButton button pressed")
    }
    
    @objc open func handleHomeButton() {
        print("Hiding menu...")
    }
}