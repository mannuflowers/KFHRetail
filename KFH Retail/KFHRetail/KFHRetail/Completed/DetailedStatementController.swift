//
//  DetailedStatementController.swift
//  KFHRetail
//
//  Created by asmat manal on 26/12/22.
//

import UIKit


class DetailedStatementController: BaseViewController, UICollectionViewDelegateFlowLayout {
    
    lazy var collectionViewC: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        let cvc = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cvc.backgroundColor = UIColor.backgroundGray
        cvc.delegate = self
        return cvc
   }()

   
    let SubmitLabel: UILabel = {
        let view = UILabel()
        view.backgroundColor = .white
        view.textAlignment = .center
        view.text = "Submit"
        view.font = UIFont(name: "Lato-Bold", size: 18)
        view.textColor = UIColor.yellowOchre
        return view
    }()

    let accountStackView: UIStackView = {

       var stackView = UIStackView()
        var icon = restrictSizeImageView1(height: 20, width: 20)
        var icon2 = restrictSizeImageView1(height: 8, width: 13)
        let title = UILabel()
        let rightTitle = UILabel()
        icon.image = #imageLiteral(resourceName: "Vector (2).png")
        icon.fillSuperview()
        icon.contentMode = .scaleAspectFit
        icon2.image = #imageLiteral(resourceName: "Vector (5).png")
        icon2.fillSuperview()
        icon2.contentMode = .scaleAspectFit
        title.text = "Accounts"
        title.font = UIFont(name: "Lato-Bold", size: 18)
        rightTitle.text = "Select"
        rightTitle.textColor = UIColor.veryLightGray
        rightTitle.font = UIFont(name: "Lato-Bold", size: 18)
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 16),icon,SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,SpacerView(space: 13),icon2,SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()

    let FromStackView: UIStackView = {

       var stackView = UIStackView()
        let icon = restrictSizeImageView1(height: 20, width: 20)
        let title = UILabel()
        let datePicker = UIDatePicker()
        datePicker.locale = .current
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .compact
        datePicker.tintColor = .systemGray
        icon.image = #imageLiteral(resourceName: "Vector (3).png")
        icon.fillSuperview()
        icon.contentMode = .scaleAspectFit
        title.text = "From"
        title.font = UIFont(name: "Lato-Bold", size: 18)
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 16),icon,SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),datePicker, SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()

    let ToStackView: UIStackView = {

       var stackView = UIStackView()
        let icon = restrictSizeImageView1(height: 20, width: 20)
        let title = UILabel()
        let datePicker = UIDatePicker()
        datePicker.locale = .current
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .compact
        datePicker.tintColor = .systemGray
        icon.image = #imageLiteral(resourceName: "Vector (4).png")
        icon.fillSuperview()
        icon.contentMode = .scaleAspectFit
        title.text = "To"
        title.font = UIFont(name: "Lato-Bold", size: 18)
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 16),icon,SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),datePicker, SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()

    let CriteriaStackView: UIStackView = {

       var stackView = UIStackView()
        let icon = restrictSizeImageView1(height: 20, width: 20)
        let icon2 = restrictSizeImageView1(height: 8, width: 13)
        let title = UILabel()
        let rightTitle = UILabel()
        icon.image = #imageLiteral(resourceName: "Vector (2).png")
        icon.fillSuperview()
        icon.contentMode = .scaleAspectFit
        icon2.image = #imageLiteral(resourceName: "Vector (5).png")
        icon2.fillSuperview()
        icon2.contentMode = .scaleAspectFit
        title.font = UIFont(name: "Lato-Bold", size: 18)
        title.text = "Criteria"
        rightTitle.text = "Select"
        rightTitle.textColor = UIColor.veryLightGray
        rightTitle.font = UIFont(name: "Lato-Bold", size: 18)
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 16),icon,SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,SpacerView(space: 13),icon2,SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()

    let DescriptionStackView: UIStackView = {

       var stackView = UIStackView()
        let title = UITextField()
        title.placeholder = "Description"
        title.font = UIFont(name: "Lato-Regular", size: 18)
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 16),title,UIView(),UIView(),UIView()])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()

    let DebitStackView: UIStackView = {

       var stackView = UIStackView()
        let title = UILabel()
        title.text = "Debit"
        title.font = UIFont(name: "Lato-Bold", size: 18)
        let toggleswitch = UISwitch()
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 16),title,UIView(),UIView(),UIView(),toggleswitch, SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()

    let CreditStackView: UIStackView = {

       var stackView = UIStackView()
        let title = UILabel()
        title.text = "Credit"
        title.font = UIFont(name: "Lato-Bold", size: 18)
        let toggleswitch = UISwitch()
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 15),title,UIView(),UIView(),UIView(),toggleswitch, SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let seperator = UIView()
//        let height = 0.5
//        seperator.heightAnchor.constraint(equalToConstant: height).isActive = true
//        seperator.backgroundColor = .black
//        seperator.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        
        
        let stackView = UIStackView(arrangedSubviews: [accountStackView,FromStackView,ToStackView,CriteriaStackView,DescriptionStackView,DebitStackView,CreditStackView])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        stackView.anchor(top: whiteView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 350)
        
        view.addSubview(SubmitLabel)
        SubmitLabel.anchor(top: stackView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 50)
        
        setNavigationBarItems(title: "Detailed Statement", leftNavigationItem: "HamburgerButton", rightNavigationItem: "home3")

        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont(name: "Lato-Bold", size: 18)!, NSAttributedString.Key.foregroundColor: UIColor.black]
    }

//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

}

