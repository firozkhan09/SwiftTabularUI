//
//  ColumnCollectionViewCell.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

enum ColumnItemType {
    case reguler
    case grouped
}

class ColumnCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var containerStackView: UIStackView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
