//
//  ViewController.swift
//  AS
//
//  Created by baidu on 16/7/15.
//  Copyright © 2016年 Alan. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var animationView: m1!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var slowButton: UIButton!
    
    override func viewDidAppear(animated: Bool) {
        
        //scrollView.contentSize = CGSizeMake(0, 10000)
    }
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playAnimation(sender: AnyObject) {
        
        animationView.animationStart(1.0)
        
    }
    
    
    @IBAction func slowAnimation(sender: AnyObject) {
        
        animationView.slowAnimation()
    }

}

