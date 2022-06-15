//
//  ColumnInfoData.swift
//  SwiftTabularUI
//
//  Created by Firoz Khan on 15/06/22.
//

import Foundation
import UIKit

enum ColumnHeaderType {
    case plain
    case grouped
}

struct ColumnInfoData {
    var header:ColumnHeader
    var items:[ColumnItem] = []
    var footer:ColumnFooter?
    
    init(header:ColumnHeader) {
        self.header = header
    }
}

struct ColumnItem {
    let value:String
    var designConfig:DesignConfid?
    
    init(value:String, config:DesignConfid? = nil) {
        self.value = value
        designConfig = config
    }
}

struct ColumnHeader {
    let type:ColumnHeaderType
    let title:String
    let subColumnTitles:[String]
    var designConfig:DesignConfid?
    
    init(type:ColumnHeaderType, title:String, subColumnTitles:[String] = [], config:DesignConfid? = nil) {
        self.type = type
        self.title = title
        self.subColumnTitles = subColumnTitles
        designConfig = config
    }
}

struct ColumnFooter {
    let value:String
    var designConfig:DesignConfid?
    
    init(value:String, config:DesignConfid? = nil) {
        self.value = value
        designConfig = config
    }
}
