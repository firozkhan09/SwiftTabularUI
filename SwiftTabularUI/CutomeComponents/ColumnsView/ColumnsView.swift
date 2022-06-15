//
//  ColumnsView.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

class ColumnsView: XIBView {
    private let cellIdentifier = "ColumnCollectionViewCell"
    @IBOutlet private(set) var collectionView:UICollectionView!
    
    override func innerContentView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("ColumnsView", owner: self, options: nil)
        return self.contentView
    }
    
    override func didLoadView() {
        setupCollectionView()
    }
    
}

extension ColumnsView: UICollectionViewDataSource {
    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        let nib = UINib(nibName: cellIdentifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: cellIdentifier)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:cellIdentifier , for: indexPath) as? ColumnCollectionViewCell
        else { return UICollectionViewCell() }
        return cell
    }
}

extension ColumnsView: UICollectionViewDelegate {
    
}
