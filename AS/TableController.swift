//
//  TableController1.swift
//  AS
//
//  Created by baidu on 16/7/16.
//  Copyright © 2016年 Alan. All rights reserved.
//

import UIKit

class TableController: UITableViewController {
    
    //MARK: Properties
    
    var cellContent = [CellContent]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleCell()
        
    }
    
    func loadSampleCell() {
        //let image1 = UIImage(named: "")!
        let content1 = CellContent(name: "Caprese Salad", image: nil )
        
        //let image2 = UIImage(named: "")!
        let content2 = CellContent(name: "Caprese Salad" , image: nil)
        
        cellContent += [content1, content2]
        
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "tableCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! TableCell
        
        let content = cellContent[indexPath.row]
        
        cell.nameLabel.text = content.name
        cell.cellImage.image = content.image
        
        return cell
    }
    
    
    
    
    
    
}
