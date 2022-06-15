//
//  TabularView.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

class TabularView: XIBView {
    private let cellIdentifier = "TabularViewCell"
    @IBOutlet private(set) var tabelView:UITableView!
    
    override func innerContentView() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        bundle.loadNibNamed("TabularView", owner: self, options: nil)
        return self.contentView
    }
    
    override func didLoadView() {
        setupTableView()
    }
}

extension TabularView: UITableViewDataSource, UITableViewDelegate {
    private func setupTableView() {
        tabelView?.dataSource = self
        tabelView?.delegate = self
        let nib = UINib(nibName: cellIdentifier, bundle: .main)
        tabelView?.register(nib, forCellReuseIdentifier: cellIdentifier)
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
