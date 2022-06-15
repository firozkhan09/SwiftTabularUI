//
//  SingleColumnRow.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

class SingleColumnRow: XIBView {
    
    override func innerContentView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("SingleColumnRow", owner: self, options: nil)
        return self.contentView
    }
}
