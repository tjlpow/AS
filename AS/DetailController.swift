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
    @IBOutlet weak var copyButton: UIButton!

    
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
    
   
    @IBAction func copyToMac(sender: AnyObject) {
        
        //make toast
        let toastLabel = UILabel(frame: CGRectMake(self.view.frame.size.width/2 - 60, self.view.frame.size.height/2-60, 120, 120))
        toastLabel.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.6)
        
    
        let textLabel = UILabel(frame: CGRectMake(self.view.frame.size.width/2 - 30, self.view.frame.size.height/2-60, 120, 120))
        toastLabel.backgroundColor = UIColor(hue: 255, saturation: 255, brightness: 255, alpha: 0.0)
        toastLabel.textColor = UIColor.blueColor()
        toastLabel.textAlignment = .Center;
        
         //blur effect
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = toastLabel.bounds
 
        
        toastLabel.addSubview(blurEffectView)
 
        
        self.view.addSubview(toastLabel)
        self.view.addSubview(textLabel)
        
        
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        
        textLabel.text = "Copied"
        textLabel.alpha = 1.0
        toastLabel.clipsToBounds  =  true
        
        UIView.animateWithDuration(1.0, delay: 3, options: .CurveEaseOut, animations: {
            
            toastLabel.alpha = 0.0
            textLabel.alpha = 0.0
            
            }, completion: nil)

    }
 

    
}
 
    
   


