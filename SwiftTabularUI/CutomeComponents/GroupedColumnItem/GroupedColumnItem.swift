//
//  GroupedColumnItem.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

class GroupedColumnItem: XIBView {
    
    override func innerContentView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("GroupedColumnItem", owner: self, options: nil)
        self.contentView.addBorder()
        return self.contentView
    }
    
}
