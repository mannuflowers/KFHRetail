////
////  QuickTableView.swift
////  KFHRetail
////
////  Created by asmat manal on 08/01/23.
////
//
//import UIKit
//
//struct CellData {
//    var leftTitle: String
//    var rightTitle: String
//}
//let firstCellData = [CellData(leftTitle: "Account Type", rightTitle: "Investment Saving Account"),
//                     CellData(leftTitle: "Total Balance", rightTitle: "1,150.000 KWD"),
//                     CellData(leftTitle: "Available Balance", rightTitle: "1,150.000 KWD"),
//                     CellData(leftTitle: "Hold Amount", rightTitle: "0.000 KWD")]
//
//class QuickTableView: BaseViewController, UITableViewDataSource, UITableViewDelegate {
//    
//    let tableView: UITableView = {
//        let tv = UITableView()
//        return tv
//    }()
//    
//   
//    
//    let FirstCellId = "firstCellId"
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setNavigationBarItems(title: "••••••••8901", leftNavigationItem: "Vector (7)", rightNavigationItem: "Light")
//        self.navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.font: UIFont(name: "Lato-Regular", size: 20)!, NSAttributedString.Key.foregroundColor: UIColor.black]
//        
//        setupTableView()
//
//    }
//    
//    func setupTableView(){
//        tableView.delegate = self
//        tableView.dataSource = self
//        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
//        tableView.register(FirstSection.self, forCellReuseIdentifier: "firstCellId")
//        tableView.frame = view.bounds
//        view.addSubview(tableView)
//    }
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//       return 1
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return firstCellData.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCellId", for: indexPath) as! FirstSection
//        
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        50
//    }
//}
//
//class FirstSection: UITableViewCell {
//    
//    let cellView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .orange
//        return view
//    }()
//    
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        setup()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func setup(){
//        addSubview(cellView)
//        
//        let title = UILabel()
//        let rightTitle = UILabel()
//       // title.text = "Account Type"
//        title.font = UIFont(name: "Lato-Regular", size: 16)
//        title.textAlignment = .left
//        title.textColor = UIColor.fontGray
//      //  rightTitle.text = "0.000 KWD"
//        rightTitle.font = UIFont(name: "Lato-Bold", size: 16)
//        rightTitle.textColor =  UIColor.someGray
//        rightTitle.textAlignment = .right
//        cellView.addSubview(title)
//        cellView.addSubview(rightTitle)
//        cellView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 4, paddingLeft: 0,paddingBottom: 0, paddingRight: 0, width: cellView.frame.width, height: 180)
//        
//    }
//}
//                   
 






