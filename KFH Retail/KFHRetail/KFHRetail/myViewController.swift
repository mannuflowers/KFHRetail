//
//  myViewController.swift
//  KFHRetail
//
//  Created by asmat manal on 09/01/23.
//

import UIKit

struct Model {
    let topText: String
    let bottomText: String

    init(topText: String, bottomText: String) {
        self.topText = topText
        self.bottomText = bottomText
    }

}

struct Model2 {
    let rightText: String
    let leftText: String
    
    init(rightText: String, leftText: String) {
        self.rightText = rightText
        self.leftText = leftText
    }
    
}


class myViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let table: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        table.register(statementTableViewCell.self, forCellReuseIdentifier: statementTableViewCell.identifier)
        return table
    }()
    
    var models = [CellModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        table.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        //        table.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        //        table.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        //        table.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        table.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        setNavigationBarItems(title: "••••••••8901", leftNavigationItem: UIBarButtonItem(image: #imageLiteral(resourceName: "Vector (7)").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHamburgerButton)), rightNavigationItem: UIBarButtonItem(image: #imageLiteral(resourceName: "Light").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleHamburgerButton)))
                self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont(name: "Lato-Regular", size: 20)!, NSAttributedString.Key.foregroundColor: UIColor.black]
        setUpModels()
        view.addSubview(table)
        contentView.addSubview(whiteView)
        //whiteView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        table.dataSource = self
        table.delegate = self
    }
    
    @objc open func handleHamburgerButton() {
        print("HamburgerButton button pressed")
    }
    
    @objc open func handleHomeButton() {
        print("Hiding menu...")
    }
    
    private func setUpModels() {
        models.append(.list(models:[
            ListCellModel(LeftTitle: "Account Type", RightTitle: "Investment Saving Account"),
            ListCellModel(LeftTitle: "Total Balance", RightTitle: "1,150.000 KWD"),
            ListCellModel(LeftTitle: "Available Balance", RightTitle: "1,150.000 KWD"),
            ListCellModel(LeftTitle: "Hold Amount", RightTitle: "0.000 KWD")]))
        
        models.append(.collectionView(models: [
            CollectionTableCellModel(TopTitle: "   7",BottomTitle: "Days"),
            CollectionTableCellModel(TopTitle: "   15", BottomTitle:"Days"),
            CollectionTableCellModel(TopTitle: "   30", BottomTitle: "Days"),
            CollectionTableCellModel(TopTitle: "   60", BottomTitle: "Days"),
            CollectionTableCellModel(TopTitle: "   90", BottomTitle: "Days"),
            CollectionTableCellModel(TopTitle: "180", BottomTitle: "Days"),
            CollectionTableCellModel(TopTitle: "240", BottomTitle: "Days"),
        ]))
        
        models.append(.statement(models: [
            StatementTableCellModel(dateTitle: "2020-11-12", kindTitle: "Other", toTitle: "Swift Chgs - Int-003-8314791", costTitle: "0.450 KWD", imageView: "",costColor: .maroonRed),
            StatementTableCellModel(dateTitle: "2020-11-12", kindTitle: "Other", toTitle: "Funt Transfer - Internet", costTitle: "0.450 KWD", imageView: "",costColor: .floroGreen),
            StatementTableCellModel(dateTitle: "2020-11-12", kindTitle: "Other", toTitle: "Funt Transfer - Internet", costTitle: "0.450 KWD", imageView: "",costColor: .floroGreen),
            StatementTableCellModel(dateTitle: "2020-11-12", kindTitle: "Other", toTitle: "Funt Transfer - Internet", costTitle: "0.450 KWD", imageView: "",costColor: .maroonRed),
            StatementTableCellModel(dateTitle: "2020-11-12", kindTitle: "Other", toTitle: "Funt Transfer - Internet", costTitle: "0.450 KWD", imageView: "",costColor: .maroonRed)
        ]))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch models[section] {
        case .collectionView(_): return 1
        case .list(let models): return models.count
        case .statement(let models):  return models.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch models[indexPath.section] {
        case .list(let models):
            let model = models[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell" ,for: indexPath)
            cell.textLabel?.text = model.LeftTitle
            cell.textLabel?.font = UIFont(name: "Lato-Regular", size: 17)
            cell.textLabel?.textAlignment = .left
            cell.textLabel?.textColor = .fontGray
            //            cell.textLabel?.text = model.RightTitle
            //            cell.textLabel?.font = UIFont(name: "Lato-Bold", size: 17)
            //            cell.textLabel?.textAlignment = .right
            return cell
        case .collectionView(let models):
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
            cell.configure(with: models)
            return cell
        case .statement(let models):
            let cell = tableView.dequeueReusableCell(withIdentifier: statementTableViewCell.identifier, for: indexPath) as! statementTableViewCell
            cell.configure(with: models)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch models[indexPath.section] {
        case .collectionView:
            return 52
        case .list(_):
            return 47
        case .statement(_):
            return 97
        }
        
    }
    
}






