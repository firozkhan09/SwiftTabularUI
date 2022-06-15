//
//  DoubleColumnRow.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

class DoubleColumnRow: XIBView {
    
    override func innerContentView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("DoubleColumnRow", owner: self, options: nil)
        return self.contentView
    }
}
