//
//  CardsController.swift
//  KFHRetail
//
//  Created by asmat manal on 21/12/22.
//
import UIKit
import SwiftUI

class CardsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    let whiteView: UILabel = {
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 100)
        //view.backgroundColor = .white
        //view.text = "My Accounts"
        view.textAlignment = .center
        view.font = UIFont(name: "Lato-Bold", size: 18)
        view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(CardsCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        navigationItem.title = "My Cards"
        
        view.addSubview(whiteView)
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        whiteView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        
        view.backgroundColor = .systemPink
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "home3").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHomeButton))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "HamburgerButton").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHamburgerButton))
        
    }

    @objc func handleHamburgerButton() {
        print("HamburgerButton button pressed")
                                            
    //let sheet = UIAlertController(title: "", message: "" ,preferredStyle: .actionSheet)
    //let sheet2 = uial
    let sheet = UIAlertController()
    let action1 = UIAlertAction(title: "Transfer to Card", style: .default) { (action) in
        print("THIS IS ACTION 1")
    }

    let action2 = UIAlertAction(title: "Report Lost Card", style: .default) { (action) in
            print("THIS IS ACTION 2")
        }
    let action3 = UIAlertAction(title: "View PIN", style: .default) { (action) in
            print("THIS IS ACTION 3")
        }
    
        
    sheet.addAction(action1)
    sheet.addAction(action2)
    sheet.addAction(action3)
    sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
    present(sheet, animated: true, completion: nil)
                                            
}

@objc func handleHomeButton() {
    print("house button is being pressed")
}
        
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CardsCell
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
        
    }
    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return.init( width: 360, height: 223)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
                    
        init() {
            super.init(collectionViewLayout: UICollectionViewFlowLayout())
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
     
    }

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?,  paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
}


