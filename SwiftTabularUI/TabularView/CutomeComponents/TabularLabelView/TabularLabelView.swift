//
//  TabularLabelView.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

class TabularLabelView: XIBView {
    
    @IBOutlet weak var label: UILabel!
    override func innerContentView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("TabularLabelView", owner: self, options: nil)
        return self.contentView
    }
    
}
