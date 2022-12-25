//
//  SlideOutMenu.swift
//  KFHRetail
//
//  Created by asmat manal on 21/12/22.
//

import UIKit

class SlideOutMenu: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .blue
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cellId")
        cell.textLabel?.text = "Menu"
        return cell
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
