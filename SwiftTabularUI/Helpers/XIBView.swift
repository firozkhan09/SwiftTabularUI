//
//  XIBView.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import Foundation
import UIKit

class XIBView: UIView {
    
    @IBOutlet private(set) var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        internalInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        internalInit()
    }
        
    func internalInit() {
        loadView()
    }
    
    func innerContentView() -> UIView? {
        if let content = contentView {
            return content
        }
        return nil
    }
    
    fileprivate func loadView() {
        if let content = innerContentView() {
            insertSubview(content, at: 0)
        }
        didLoadView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let content = contentView {
            content.frame = bounds
        }
    }
    
    func didLoadView() {
        
    }
}
