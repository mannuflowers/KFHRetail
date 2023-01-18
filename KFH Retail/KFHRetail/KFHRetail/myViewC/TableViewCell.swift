//
//  TableViewCell.swift
//  Test
//
//  Created by asmat manal on 09/01/23.
//

import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    static let identifier = "TableViewCell"
    
    private var models = [CollectionTableCellModel]()
    
    let collectionView: UICollectionView
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 52, height: 30)
        layout.sectionInset = UIEdgeInsets(top: 0,left: 15,bottom: 0,right: 15)
        
        
        self.collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)

        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionView.register(myCollectionViewCell.self, forCellWithReuseIdentifier: myCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        contentView.addSubview(collectionView)
        
//        NSLayoutConstraint.activate([
//            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
//            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//            collectionView.topAnchor.constraint(equalTo: contentView.topAnchor),
//            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
//        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
    }
    
    public func configure(with models: [CollectionTableCellModel]){
        self.models = models
        collectionView.reloadData()
        
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
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = models[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: myCollectionViewCell.identifier, for: indexPath) as! myCollectionViewCell
        
        cell.configure(with: model)
        return cell
    }

}




