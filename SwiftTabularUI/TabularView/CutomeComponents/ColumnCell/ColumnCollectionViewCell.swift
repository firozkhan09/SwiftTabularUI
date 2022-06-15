//
//  ColumnCollectionViewCell.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

enum ColumnGroupRowType {
    case single
    case double
    case triple
    
    var cellIdentifier:String {
        switch self {
        case .single:
            return ""
        case .double:
            return ""
        case .triple:
            return ""
        }
    }
}

class ColumnCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
