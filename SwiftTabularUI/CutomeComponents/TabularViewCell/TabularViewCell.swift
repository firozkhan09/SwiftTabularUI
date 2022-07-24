//
//  TabularViewCell.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

class TabularViewCell: UITableViewCell {
    
    @IBOutlet weak var columns: ColumnsView!
    var didUpdateHeight: DidUpdateHeight?
    
    var columnInfoList:[ColumnInfoData]? {
        didSet {
            columns.columnsData = columnInfoList
            columns.didUpdateHeight = didUpdateHeight
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
}
