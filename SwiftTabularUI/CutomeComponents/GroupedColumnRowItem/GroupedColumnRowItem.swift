//
//  GroupedColumnRowItem.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 19/06/22.
//

import UIKit

class GroupedColumnRowItem: XIBView {

    override func innerContentView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("GroupedColumnRowItem", owner: self, options: nil)
        self.contentView.addBorder()
        return self.contentView
    }
}
