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
    
    var isMenuOpened = false
    let darkCoverView = UIView()
    let vc = myAccountsController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor(red: 0.357, green: 0.561, blue: 0.42, alpha: 1)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MenuItemCell(style: .default, reuseIdentifier: "cellId")
        let menuItem = menuItems[indexPath.row]
        cell.iconImageView.image = menuItem.icon
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let purpleView = MenuHeader()
        return purpleView
        
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        handleSelect()
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(72)
    }
    
    @objc func handleSelect(){
        print("handling select of row")
    }
    
}
