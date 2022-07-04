//
//  UIStackView_extension.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 04/07/22.
//

import UIKit

extension UIStackView {
    
    func removeAll() {
        arrangedSubviews.forEach { subview in
            removeArrangedSubview(subview)
            subview.removeFromSuperview()
        }
    }
    
}
