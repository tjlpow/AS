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
        let content1 = CellContent(name: "SlideIn", image: nil )
        //let image2 = UIImage(named: "")!
        let content2 = CellContent(name: "SlideOut" , image: nil)
        let content3 = CellContent(name: "TouchDown" , image: nil)
        let content4 = CellContent(name: "LongPress" , image: nil)
        let content5 = CellContent(name: "Notification" , image: nil)
        
        cellContent += [content1, content2, content3, content4, content5]
        
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
