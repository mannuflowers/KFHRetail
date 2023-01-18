//
//  CardsController.swift
//  KFHRetail
//
//  Created by asmat manal on 21/12/22.
//
import UIKit

struct CardsDataStruct {
    let usedLimitAmountData : String
    let availableLimitAmountData : String
    let nameData : String
    let cardNumberData : String
    let cardTypeImage : String
    let containerViewImage : String
}


let person1 = CardsDataStruct(usedLimitAmountData: "356.595", availableLimitAmountData: "143.405 KWD", nameData: "MOHAMMAD HUSSEIN", cardNumberData: "XXXXX 1496", cardTypeImage: "image 5", containerViewImage: "MicrosoftTeams-image (1)")
let person2 = CardsDataStruct(usedLimitAmountData: "119.445", availableLimitAmountData: "305.211 KWD", nameData: "ASMAT MANAL", cardNumberData: "XXXXX 1366", cardTypeImage: "master@2x", containerViewImage: "MicrosoftTeams-image (2)")
let person3 = CardsDataStruct(usedLimitAmountData: "300.505", availableLimitAmountData: "780.119 KWD", nameData: "ABDUL KARIM", cardNumberData: "XXXXX 5764", cardTypeImage: "image 5", containerViewImage: "MicrosoftTeams-image (1)")
let person4 = CardsDataStruct(usedLimitAmountData: "92.200", availableLimitAmountData: "343.435 KWD", nameData: "BILAL AHMED", cardNumberData: "XXXXX 9821", cardTypeImage: "master@2x", containerViewImage: "MicrosoftTeams-image (2)")


let ArrayOfPeople = [person1,person2,person3,person4]
   

class CardsController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    private var cellId = "cellId"
   
    
    lazy var collectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        let cvc = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return cvc
   }()

    
//    let usedLimitAmountData = [("356.595"),("119.445"),("300.505"),("92.200")]
//    let availableLimitAmountData = [("143.405 KWD"),("305.211 KWD"),("780.119 KWD"),("343.435 KWD")]
//    let nameData = [("MOHAMMAD HUSSEIN"),("ASMAT MANAL"),("ABDUL KARIM"),("BILAL AHMED")]
//    let cardNumberData = [("XXXXX 1496"),("XXXXX 1366"),("XXXXX 5764"),("XXXXX 9821")]
//    let cardTypeImage = [UIImage(named: "image 5"),UIImage(named: "master@2x"),UIImage(named: "image 5"),UIImage(named: "master@2x")]
//    let containerViewImage = [UIImage(named: "MicrosoftTeams-image (1)"),UIImage(named: "MicrosoftTeams-image (2)"),UIImage(named: "MicrosoftTeams-image (1)"),UIImage(named: "MicrosoftTeams-image (2)")]
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        collectionView.register(CardsCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.backgroundColor = UIColor.customLightGray
        collectionView.delegate = self
        collectionView.dataSource = self
        //contentView.addSubview(collectionView)
//        view.backgroundColor = .blue
       // contentView.addSubview(collectionView)
        
        self.setNavigationBarItems(title: "My Cards", leftNavigationItem: UIBarButtonItem(image: #imageLiteral(resourceName: "HamburgerButton").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHamburgerButton)), rightNavigationItem: UIBarButtonItem(image: #imageLiteral(resourceName: "home3").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHomeButton)))
       
        
    }
    
    
    
    @objc func handleHamburgerButton() {
        print("HamburgerButton button pressed")
                                            
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
    
    
   
     
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CardsCell
        
        let cellIndex = indexPath.item
        cell.usedLimitAmountLabel.text = ArrayOfPeople[cellIndex].usedLimitAmountData
        cell.availableLimitAmountLabel.text = ArrayOfPeople[cellIndex].availableLimitAmountData
        cell.nameLabel.text = ArrayOfPeople[cellIndex].nameData
        cell.cardNumberLabel.text = ArrayOfPeople[cellIndex].cardNumberData
        cell.cardTypeImageView.image = UIImage(named: ArrayOfPeople[cellIndex].cardTypeImage)
        cell.containerView.image = UIImage(named: ArrayOfPeople[cellIndex].containerViewImage)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ArrayOfPeople.count
    }
    
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return.init( width: 347, height: 215)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 9.5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return.init(top: 4, left: 7, bottom: 0, right: 7)
    }
    
    
}



