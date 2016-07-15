//
//  TableCell1.swift
//  AS
//
//  Created by baidu on 16/7/16.
//  Copyright © 2016年 Alan. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    
    

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

    
}
