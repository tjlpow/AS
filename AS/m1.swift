//
//  m1.swift
//  AS
//
//  Created by baidu on 16/7/16.
//  Copyright © 2016年 Alan. All rights reserved.
//

import UIKit

class m1: UIView {

    //MARK: Properties
   
    let rect = CAShapeLayer()
    
    
    
    //MARK: Initialization
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.addSublayer(rect)

    
    }
    
   
    override func layoutSubviews() {
        
        layer.borderColor = UIColor.lightGrayColor().CGColor
        layer.borderWidth = 0.5
        
        //layer.shadowColor = UIColor.blackColor().CGColor
        //layer.shadowRadius = 3
        //layer.shadowOpacity = 0.8
        
        
        let rectWidth = layer.bounds.width
        let rectHeight = layer.bounds.height * 0.5
        
        rect.frame = CGRectMake(0, layer.bounds.height - layer.bounds.height * 0.4, rectWidth , rectHeight )
        rect.backgroundColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1.0).CGColor

        /*
        rect.path = UIBezierPath(rect: CGRectMake(0, layer.bounds.height - rectHeight + 30, rectWidth , rectHeight )).CGPath
        rect.fillColor = UIColor.lightGrayColor().CGColor
        */
 

    
    }
    
    override func intrinsicContentSize() -> CGSize {
        
        return CGSize(width: 150, height: 250)
    }
        
    func animationStart(speed: Float) {
        
        layer.speed = speed
        let slideIn = CASpringAnimation(keyPath: "position.y")
        slideIn.fromValue = layer.bounds.height + layer.bounds.height*0.5/2
        slideIn.toValue = layer.bounds.height - layer.bounds.height * (0.5/2-0.1)
        slideIn.damping = 17
        slideIn.initialVelocity = 10
        slideIn.duration = slideIn.settlingDuration
        rect.addAnimation(slideIn, forKey: nil)
        
        
    }
        
    func slowAnimation() {
        
        self.animationStart(0.2)
        
    }
        
}
