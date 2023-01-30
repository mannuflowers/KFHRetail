//
//  Models.swift
//  KFHRetail
//
//  Created by asmat manal on 09/01/23.
//

import UIKit

enum CellModel{
    case list(models: [ListCellModel])
    case collectionView(models: [CollectionTableCellModel])
    case statement(models: [StatementTableCellModel])
    
}

struct ListCellModel {
    let LeftTitle: String
    let RightTitle: String
}

struct CollectionTableCellModel {
    let TopTitle: String
    let BottomTitle: String
}



struct StatementTableCellModel {
    let dateTitle: String
    let kindTitle: String
    let toTitle: String
    let costTitle: String
    let imageView: String
    let costColor: UIColor

}

