//
//  ColumnView.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

class ColumnView: XIBView {
    
    @IBOutlet private(set) var collectionView:UICollectionView!
    
    override func innerContentView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("ColumnView", owner: self, options: nil)
        return self.contentView
    }
    
    override func didLoadView() {
        setupCollectionView()
    }
}

extension ColumnView {
    private func setupCollectionView() {
        
    }
}
