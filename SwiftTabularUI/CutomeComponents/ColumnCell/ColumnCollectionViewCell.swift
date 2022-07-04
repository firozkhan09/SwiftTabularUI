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
        addHeader(columnData.header)
        addItems(columnData.items)
        addFooter(columnData.footer)
    }
    
    private func addHeader(_ header:ColumnHeader) {
        let headerView = TabularLabelView(frame: .zero)
        headerView.label.text = header.title
        containerStackView.addArrangedSubview(headerView)
    }
    
    private func addItems(_ items:[RowItem]) {
        items.forEach { rowItem in
            let itemView = TabularLabelView(frame: .zero)
            itemView.label.text = rowItem.value
            containerStackView.addArrangedSubview(itemView)
        }
    }
    
    private func addFooter(_ footer:ColumnFooter?) {
        if let value = footer?.value {
            let footerView = TabularLabelView(frame: .zero)
            footerView.label.text = value
            containerStackView.addArrangedSubview(footerView)
        }
    }
    
    private func removeAll() {
        containerStackView.removeAll()
    }

}
