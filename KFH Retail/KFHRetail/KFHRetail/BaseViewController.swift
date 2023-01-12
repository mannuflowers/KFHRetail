//
//  BaseViewController.swift
//  KFHRetail
//
//  Created by asmat manal on 04/01/23.
//

import UIKit

class BaseViewController: UIViewController {
    
   public let whiteView: UIView = {
        let view = UIView()
        view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.layer.backgroundColor = UIColor.backgroundGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //whiteView.topAnchor.constraint(equalTo: view.frame.topAnchor).isActive = true
        
        
        //contentView.topAnchor.constraint(equalTo: whiteView.bottomAnchor).isActive = true
        contentView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        contentView.heightAnchor.constraint(equalToConstant:view.frame.height).isActive = true
        view.addSubview(contentView)
        
        whiteView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        whiteView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
    }
    
    open func setNavigationBarItems(title: String,leftNavigationItem: String,rightNavigationItem: String){
                
        navigationItem.title = title
       
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: leftNavigationItem)?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHamburgerButton))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: rightNavigationItem)?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHomeButton))
    }
    
    @objc open func handleHamburgerButton() {
        print("HamburgerButton button pressed")
    }
    
    @objc open func handleHomeButton() {
        print("Hiding menu...")
    }
}


