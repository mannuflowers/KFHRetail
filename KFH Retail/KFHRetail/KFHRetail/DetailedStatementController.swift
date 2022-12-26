//
//  DetailedStatementController.swift
//  KFHRetail
//
//  Created by asmat manal on 26/12/22.
//

import UIKit

class DetailedStatementController: UITableViewController {
    
    let whiteView: UILabel = {
        let view = UILabel()
        view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 100)
        view.backgroundColor = .white
        view.textAlignment = .center
        view.font = UIFont(name: "Lato-Bold", size: 18)
        view.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        navigationItem.title = "Detailed Statement"
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true
        whiteView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view.addSubview(whiteView)


        view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.text = "menuItem.title"
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(52)
    }
    
}

}
