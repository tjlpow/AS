//
//  ViewController.swift
//  AS
//
//  Created by baidu on 16/7/15.
//  Copyright © 2016年 Alan. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var animationView: m1!
    @IBOutlet weak var playButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playAnimation(sender: AnyObject) {
        animationView.animationStart()
            
    }

}

