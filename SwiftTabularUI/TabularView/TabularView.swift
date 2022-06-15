//
//  TabularView.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

class TabularView: XIBView {
    private let cellIdentifier = "TabularViewCell"
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
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TabularViewCell
        else { return UITableViewCell() }
        return cell
    }
    
    
}
