//
//  TabularView.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

protocol TabularViewDataSource: NSObjectProtocol {
    func numerOfColumns(in tabularView: TabularView) -> Int
    
    func tabularView(_ tabularView: TabularView, columnInfoDataAtIndex index:Int) -> ColumnInfoData
}

protocol TabularViewDelegate: NSObjectProtocol {
    
}

class TabularView: XIBView {
    
    weak open var dataSource: TabularViewDataSource?
    weak open var delegate: TabularViewDelegate?
    
    private let cellIdentifier = "TabularViewCell"
    private var columnDataList = [ColumnInfoData]()
    
    @IBOutlet private(set) var tableView:UITableView!
    
    override func innerContentView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("TabularView", owner: self, options: nil)
        return self.contentView
    }
    
    override func didLoadView() {
        setupTableView()
    }
    
    func loadTable(data:[String]) {
        tableView.reloadData()
    }
}

extension TabularView {
    func reloadData() {
        tableView.reloadData()
    }
    
    private func mapColumnData(forNumberOfColumns count:Int) {
        columnDataList.removeAll()
        guard let source = dataSource else { return }
        for i in 0..<count {
            let data = source.tabularView(self, columnInfoDataAtIndex: i)
            columnDataList.append(data)
        }
    }
}

extension TabularView: UITableViewDataSource, UITableViewDelegate {
    private func setupTableView() {
        tableView?.dataSource = self
        tableView?.delegate = self
        let nib = UINib(nibName: cellIdentifier, bundle: .main)
        tableView?.register(nib, forCellReuseIdentifier: cellIdentifier)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // This is a table view having only one cell,
        // this will provide the capability to scroll vertical
        // if any number of rows are hidding due to the static view size
        let numberOfColumns = dataSource?.numerOfColumns(in: self) ?? 0
        mapColumnData(forNumberOfColumns: numberOfColumns)
        return numberOfColumns > 0 ? 1 : 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TabularViewCell
        else { return UITableViewCell() }
        return cell
    }
    
    
}
