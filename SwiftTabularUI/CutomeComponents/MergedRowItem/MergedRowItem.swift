//
//  MergedRowItem.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 19/06/22.
//

import UIKit

class MergedRowItem: XIBView {
    
    @IBOutlet weak private var heightConstraint: NSLayoutConstraint!
    
    override func innerContentView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("TabularLabelView", owner: self, options: nil)
        self.contentView.addBorder()
        return self.contentView
    }
}
