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
    
    func bind(data: ColumnInfoData) {
        loadViews(for: data)
    }
    
    private func loadViews(for columnData: ColumnInfoData) {
        removeAll()
    }
    
    private func removeAll() {
        containerStackView.removeAll()
    }

}
