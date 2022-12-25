//
//  SlideOutMenu.swift
//  KFHRetail
//
//  Created by asmat manal on 21/12/22.
//

import UIKit

struct MenuItem {
    
    let icon: UIImage
    let title: String
}

class SlideOutMenu: UITableViewController {
        
    let menuItems = [MenuItem(icon: #imageLiteral(resourceName: "AccountServices (1).png"), title: "Account Services"),
                     MenuItem(icon: #imageLiteral(resourceName: "Cards.png"), title: "Cards"),
                     MenuItem(icon: #imageLiteral(resourceName: "Transfers.png"), title: "Transfers"),
                     MenuItem(icon: #imageLiteral(resourceName: "Cardless.png"), title: "Cardless"),
                     MenuItem(icon: #imageLiteral(resourceName: "FinanceServices.png"), title: "Finance Services"),
                     MenuItem(icon: #imageLiteral(resourceName: "StandingOrders.png"), title: "Standing Orders"),
                     MenuItem(icon: #imageLiteral(resourceName: "GoldAccount.png"), title: "Gold Account"),
                     MenuItem(icon: #imageLiteral(resourceName: "Cheques.png"), title: "Cheques"),
                     MenuItem(icon: #imageLiteral(resourceName: "OtherServices.png"), title: "Other Services")]
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(red: 0.357, green: 0.561, blue: 0.42, alpha: 1)
        
        //let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan))
    }
    
//    @objc func handlePan(gesture: UIPanGestureRecognizer) {
//        let pull = gesture.translation(in: view)
//        let x = pull.x + 305
//        view.transform = CGAffineTransform(translationX: x, y: 0)
//
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
       // cell.backgroundColor = UIColor(red: 0.357, green: 0.561, blue: 0.42, alpha: 1)
        let menuItem = menuItems[indexPath.row]
        let greenLabel = UILabel()
        let text = UITextView()
        greenLabel.frame = CGRect(x: 0, y: 0, width: 72, height: 72)
        greenLabel.layer.backgroundColor = UIColor(red: 0.357, green: 0.561, blue: 0.42, alpha: 1).cgColor
        text.text = menuItem.title
        text.textColor = .white
        text.font = UIFont(name: "Lato-Regular", size: 12)
        text.textAlignment = .center
        
       
        //greenLabel.layoutMargins = UIEdgeInsets(top: <#T##CGFloat#>, left: <#T##CGFloat#>, bottom: <#T##CGFloat#>, right: <#T##CGFloat#>)
        cell.addSubview(greenLabel)
        cell.textLabel?.text = menuItem.title
        cell.imageView?.image = menuItem.icon
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let purpleView = MenuHeader()
        return purpleView
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(72)
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
//        {
//            let touch = touches.first
//            if touch?.view != self.
//            { self.dismiss(animated: true, completion: nil) }
//    }
}
