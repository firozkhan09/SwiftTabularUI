//
//  ViewController.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tabularView: TabularView!
    var columns = TestData()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabularView.dataSource = self
    }


}

extension ViewController:  TabularViewDataSource {
    func numerOfColumns(in tabularView: TabularView) -> Int {
        return columns.columnsData.count
    }
    
    func tabularView(_ tabularView: TabularView, columnInfoDataAtIndex index: Int) -> ColumnInfoData {
        return columns.columnsData[index]
    }
}

struct TestData {
    var columnsData:[ColumnInfoData] {
        return createColumnData()
    }
    
    private func createColumnData() -> [ColumnInfoData] {
        var columns = [ColumnInfoData]()
        columns.append(column1())
        columns.append(column2())
        columns.append(column3())
        columns.append(column4())
        return columns
    }
    
    private func column1() -> ColumnInfoData {
        let columnHeader = ColumnHeader(type: .plain, title: "Zone Name")
        var column = ColumnInfoData(header: columnHeader)
        column.items = [RowItem(value: "Clock and Palm Courts"),
                        RowItem(value: "Phase Two (600)"),
                        RowItem(value: "Giant Wheel Court"),
                        RowItem(value: "Block 800 A"),
                        RowItem(value: "Phase One (500)"),
                        RowItem(value: "Block 800 B"),
                        RowItem(value: "Phase Three (700A)"),
                        RowItem(value: "Phase Three (700B)")]
        return column
    }
    
    private func column2() -> ColumnInfoData {
        let columnHeader = ColumnHeader(type: .plain, title: "Entries")
        var column = ColumnInfoData(header: columnHeader)
        column.items = [RowItem(value: "28,945"),
                        RowItem(value: "20,529"),
                        RowItem(value: "18,322"),
                        RowItem(value: "16,271"),
                        RowItem(value: "16,003"),
                        RowItem(value: "12,478"),
                        RowItem(value: "10,127"),
                        RowItem(value: "9,497")]
        return column
    }
    
    private func column3() -> ColumnInfoData {
        let columnHeader = ColumnHeader(type: .plain, title: "Peak Enter")
        var column = ColumnInfoData(header: columnHeader)
        column.items = [RowItem(value: "3,217"),
                        RowItem(value: "2,799"),
                        RowItem(value: "2,036"),
                        RowItem(value: "1,716"),
                        RowItem(value: "1,921"),
                        RowItem(value: "1,328"),
                        RowItem(value: "1,110"),
                        RowItem(value: "1,242")]
        return column
    }
    
    private func column4() -> ColumnInfoData {
        let columnHeader = ColumnHeader(type: .plain, title: "Peak Occupancy @ Hour")
        var column = ColumnInfoData(header: columnHeader)
        column.items = [RowItem(value: "827 @ 01 PM"),
                        RowItem(value: "446 @ 10 PM"),
                        RowItem(value: "911 @ 08 PM"),
                        RowItem(value: "155 @ 10 AM"),
                        RowItem(value: "2,656 @ 07 PM"),
                        RowItem(value: "4249  06 PM"),
                        RowItem(value: "157 @ 03 PM"),
                        RowItem(value: "1,274 @ 09 PM")]
        return column
    }
}
