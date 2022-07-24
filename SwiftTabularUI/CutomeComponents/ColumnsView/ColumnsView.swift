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
    
    var columnsData:[ColumnInfoData]? {
        didSet{
            collectionView.reloadData()
        }
    }
    
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
        if let flowLayout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            flowLayout.estimatedItemSize = CGSize(width: 1, height:1) // important (automatic does not work)
        }
        let nib = UINib(nibName: cellIdentifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: cellIdentifier)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return columnsData?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:cellIdentifier , for: indexPath) as? ColumnCollectionViewCell,
              let cellData = columnsData?[indexPath.row]
        else { return UICollectionViewCell() }
        cell.bind(data: cellData)
        return cell
    }
}

extension ColumnsView: UICollectionViewDelegate {
    
}
