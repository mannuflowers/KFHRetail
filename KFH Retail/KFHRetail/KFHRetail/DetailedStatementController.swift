//
//  DetailedStatementController.swift
//  KFHRetail
//
//  Created by asmat manal on 26/12/22.
//

import UIKit

class SpacerView: UIView {
    
    let space: CGFloat

    override var intrinsicContentSize: CGSize {
        return .init(width: space, height: space)
    }
    
    init(space: CGFloat) {
        self.space = space
        super.init(frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


class restrictSizeImageView: UIImageView {
    override var intrinsicContentSize: CGSize {
        return .init(width: 20, height: 0.5)
    }
}

class DetailedStatementController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
       
    let whiteView: UILabel = {
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 100)
        view.backgroundColor = .white
        view.textAlignment = .center
        view.font = UIFont(name: "Lato-Bold", size: 18)
        view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        return view
    }()
    
    let SubmitLabel: UILabel = {
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 50)
        view.backgroundColor = .white
        view.textAlignment = .center
        view.text = "Submit"
        view.font = UIFont(name: "Lato-Bold", size: 18)
        view.font = .boldSystemFont(ofSize: 18)
        view.textColor = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
        view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        return view
    }()
    
    let accountStackView: UIStackView = {
        
       var stackView = UIStackView()
        let icon = restrictSizeImageView()
        let icon2 = UIImageView()
        let title = UILabel()
        let rightTitle = UILabel()
        icon.image = #imageLiteral(resourceName: "Vector (2).png")
        icon2.image = #imageLiteral(resourceName: "Vector (5).png")
        icon.image?.alignmentRectInsets
        title.text = "Accounts"
        title.font = .boldSystemFont(ofSize: 18)
        rightTitle.text = "Select"
        rightTitle.textColor = UIColor(red: 0.478, green: 0.486, blue: 0.482, alpha: 1)
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),icon,SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,icon2,SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()
    
    let FromStackView: UIStackView = {
        
       var stackView = UIStackView()
        let icon = restrictSizeImageView()
        let title = UILabel()
        let datePicker = UIDatePicker()
        datePicker.locale = .current
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .compact
        datePicker.tintColor = .systemGray
        icon.image = #imageLiteral(resourceName: "Vector (3).png")
        icon.image?.alignmentRectInsets
        title.text = "From"
        title.font = .boldSystemFont(ofSize: 18)
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),icon,SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),datePicker, SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()
    
    let ToStackView: UIStackView = {
        
       var stackView = UIStackView()
        let icon = UIImageView()
        icon.frame = CGRect(x: 0, y: 0, width: 20, height: 10)
//        addSubview(icon)
        icon.widthAnchor.constraint(equalToConstant: 30).isActive = true //here
        icon.heightAnchor.constraint(equalToConstant: 5).isActive = true //here

        let title = UILabel()
        let datePicker = UIDatePicker()
        datePicker.locale = .current
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .compact
        datePicker.tintColor = .systemGray
        icon.image = #imageLiteral(resourceName: "Vector (4).png")
        icon.image?.alignmentRectInsets
        title.text = "To"
        title.font = .boldSystemFont(ofSize: 18)
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),icon,SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),datePicker, SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()
    
    let CriteriaStackView: UIStackView = {
        
       var stackView = UIStackView()
        let icon = restrictSizeImageView()
        let icon2 = UIImageView()
        let title = UILabel()
        let rightTitle = UILabel()
        icon.image = #imageLiteral(resourceName: "Vector (2).png")
        icon2.image = #imageLiteral(resourceName: "Vector (5).png")
        title.font = .boldSystemFont(ofSize: 18)
        icon.image?.alignmentRectInsets
        title.text = "Criteria"
        rightTitle.text = "Select"
        rightTitle.textColor = UIColor(red: 0.478, green: 0.486, blue: 0.482, alpha: 1)
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 4),icon,SpacerView(space: 15),title,UIView(),UIView(),UIView(),UIView(),rightTitle,icon2,SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()
    
    let DescriptionStackView: UIStackView = {
        
       var stackView = UIStackView()
        let title = UITextField()
        
        title.placeholder = "Description"
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 15),title,UIView(),UIView(),UIView()])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()
    
    let DebitStackView: UIStackView = {
        
       var stackView = UIStackView()
        let title = UILabel()
        title.text = "Debit"
        title.font = .boldSystemFont(ofSize: 18)
        //title.text =
        let toggleswitch = UISwitch()
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 15),title,UIView(),UIView(),UIView(),toggleswitch, SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()
    
    let CreditStackView: UIStackView = {
        
       var stackView = UIStackView()
        let title = UILabel()
        title.text = "Credit"
        title.font = .boldSystemFont(ofSize: 18)
        //title.text =
        let toggleswitch = UISwitch()
        stackView = UIStackView(arrangedSubviews: [SpacerView(space: 15),title,UIView(),UIView(),UIView(),toggleswitch, SpacerView(space: 15)])
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.distribution = .fill
       return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  collectionView.backgroundColor = .red
        collectionView.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        navigationItem.title = "Detailed Statement"
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        whiteView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.addSubview(whiteView)
        
        let stackView = UIStackView(arrangedSubviews: [accountStackView,FromStackView,ToStackView,CriteriaStackView,DescriptionStackView,DebitStackView,CreditStackView])
        stackView.axis = .vertical
        collectionView.addSubview(stackView)
        stackView.distribution = .fillEqually
        stackView.anchor(top: whiteView.bottomAnchor, left: self.whiteView.leftAnchor, bottom: nil, right: self.whiteView.rightAnchor, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 350)
        collectionView.addSubview(SubmitLabel)
        SubmitLabel.anchor(top: stackView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: view.frame.width, height: 50)
        
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "home3").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHomeButton))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "HamburgerButton").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHamburgerButton))
        
    }
    
    
    @objc func handleHamburgerButton() {
        
        print("HamburgerButton button pressed")
        //performAnimations(transform: CGAffineTransform(translationX: 305, y: 0))
    }
    
    @objc func handleHomeButton() {
        
        print("Hiding menu...")
        //performAnimations(transform: .identity)
        
    }
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

    

