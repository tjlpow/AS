//
//  cellContent1.swift
//  AS
//
//  Created by baidu on 16/7/16.
//  Copyright © 2016年 Alan. All rights reserved.
//

import UIKit

class CellContent {
    
    // MARK: Properties
    var name: String
    var image: UIImage?
    
    // MARK: Initialization
    init(name: String, image: UIImage?) {
        // Initialize stored properties.
        self.name = name
        self.image = image
        
    }
}