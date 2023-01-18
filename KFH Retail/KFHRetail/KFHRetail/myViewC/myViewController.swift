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

//class firstCell: UITableViewCell {
//    var rightText = UILabel()
//    var leftText = UILabel()
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {}
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
    
class myViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let table: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        table.register(statementTableViewCell.self, forCellReuseIdentifier: statementTableViewCell.identifier)
        table.register(tableviewcell2.self, forCellReuseIdentifier: tableviewcell2.identifier)
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
        setNavigationBarItems(title: "••••••••8901", leftNavigationItem: "Vector (7)", rightNavigationItem: "Light")
        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont(name: "Lato-Regular", size: 20)!, NSAttributedString.Key.foregroundColor: UIColor.black]
        setUpModels()
        view.addSubview(table)
        view.addSubview(whiteView)
        table.dataSource = self
        table.delegate = self
    }
    
    private func setUpModels() {
        models.append(.list(model1:[
            ListCellModel(LeftTitle: "Account Type", RightTitle: "Investment Saving Account"),
            ListCellModel(LeftTitle: "Total Balance", RightTitle: "1,150.000 KWD"),
            ListCellModel(LeftTitle: "Available Balance", RightTitle: "1,150.000 KWD"),
            ListCellModel(LeftTitle: "Hold Amount", RightTitle: "0.000 KWD"),
        ]))
        
        models.append(.collectionView(models: [
            CollectionTableCellModel(TopTitle: "7",BottomTitle: "Days"),
            CollectionTableCellModel(TopTitle: "15", BottomTitle:"Days"),
            CollectionTableCellModel(TopTitle: "30", BottomTitle: "Days"),
            CollectionTableCellModel(TopTitle: "60", BottomTitle: "Days"),
            CollectionTableCellModel(TopTitle: "90", BottomTitle: "Days"),
            CollectionTableCellModel(TopTitle: "180", BottomTitle: "Days"),
            CollectionTableCellModel(TopTitle: "240", BottomTitle: "Days"),
        ]))
        
        models.append(.statement(models: [
            StatementTableCellModel(dateTitle: "2020-11-12", kindTitle: "Other", toTitle: "Swift Chgs - Int-003-8314791", costTitle: "0.450 KWD", imageView: "Vector (8)",costColor: .maroonRed),
            StatementTableCellModel(dateTitle: "2020-11-12", kindTitle: "Other", toTitle: "Swift Chgs - Int-003-8314791", costTitle: "0.450 KWD", imageView: "Vector (8)",costColor: .maroonRed),
            StatementTableCellModel(dateTitle: "2020-11-12", kindTitle: "Other", toTitle: "Swift Chgs - Int-003-8314791", costTitle: "0.450 KWD", imageView: "Vector (8)",costColor: .maroonRed),
            StatementTableCellModel(dateTitle: "2020-11-12", kindTitle: "Other", toTitle: "Swift Chgs - Int-003-8314791", costTitle: "0.450 KWD", imageView: "Vector (8)",costColor: .maroonRed),
            StatementTableCellModel(dateTitle: "2020-11-12", kindTitle: "Other", toTitle: "Swift Chgs - Int-003-8314791", costTitle: "0.450 KWD", imageView: "Vector (8)",costColor: .maroonRed),
        ]))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch models[section] {
        case .collectionView(_): return 1
        case .list(let model1): return model1.count
        case .statement(let models):  return models.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch models[indexPath.section] {
        case .list(let model1):
            let cell = tableView.dequeueReusableCell(withIdentifier: tableviewcell2.identifier, for: indexPath) as! tableviewcell2
            cell.configure(with: model1)
            return cell
            
//            let model = models[indexPath.row]
//            let atTT = NSMutableAttributedString(string: model.LeftTitle, attributes: [NSAttributedString.Key.font: UIFont(name: "Lato-Regular", size: 16), NSAttributedString.Key.foregroundColor : UIColor.fontGray])
//            atTT.append(NSAttributedString(string: "            "))
//            atTT.append(NSAttributedString(string: model.RightTitle, attributes: [NSAttributedString.Key.font: UIFont(name: "Lato-Bold", size: 16), NSAttributedString.Key.foregroundColor : UIColor.someGray]))
//            cell.textLabel?.attributedText = atTT
//            cell.textLabel?.textAlignment = .left
            
//            cell.rightText.text = model.RightTitle
//            cell.rightText.textAlignment = .right
//            cell.leftText.text = model.LeftTitle
//            cell.leftText.textAlignment = .left
//            return cell
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
        case .statement:
            return 97
        }
    }
    
    override func handleRightNavigationItem() {
        let vc = CardsController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}







