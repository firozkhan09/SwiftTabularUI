//
//  UIView_extension.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import Foundation
import UIKit

extension UIView {
    func addBorder(withWidth width:CGFloat = 1.0, color:UIColor = .black) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
