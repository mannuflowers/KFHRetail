//
//  tableviewcell2.swift
//  KFHRetail
//
//  Created by asmat manal on 18/01/23.
//

import UIKit

class tableviewcell2: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    static let identifier = "tableviewcell2"
    
    private var models = [ListCellModel]()
    
    let collectionView1: UICollectionView
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 375, height: 39)
        layout.sectionInset = UIEdgeInsets(top: 0,left: 3,bottom: 3,right: 3)
        
        
        self.collectionView1 = UICollectionView(frame: .zero, collectionViewLayout: layout)

        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        collectionView1.showsVerticalScrollIndicator = false
        collectionView1.showsHorizontalScrollIndicator = false

        collectionView1.register(collectionView2.self, forCellWithReuseIdentifier: collectionView2.identifier)
        
        collectionView1.delegate = self
        collectionView1.dataSource = self
        
        contentView.addSubview(collectionView1)

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView1.frame = contentView.bounds
    }
    
    public func configure(with model1: [ListCellModel]){
        self.models = model1
        collectionView1.reloadData()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView1.deselectItem(at: indexPath, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = models[indexPath.row]
        let cell = collectionView1.dequeueReusableCell(withReuseIdentifier: collectionView2.identifier, for: indexPath) as! collectionView2
        
        cell.configure(with: model)
        return cell
    }

}




