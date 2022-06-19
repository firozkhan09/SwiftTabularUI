//
//  MultiRowItem.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 19/06/22.
//

import UIKit

class MultiRowItem: XIBView {

    override func innerContentView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("MultiRowItem", owner: self, options: nil)
        self.contentView.addBorder()
        return self.contentView
    }
}
