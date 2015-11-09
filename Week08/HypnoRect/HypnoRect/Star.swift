//
//  Star.swift
//  HypnoRect
//
//  Created by Aijaz Ansari on 11/8/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

struct Star:Stencil {
    func draw(rect: CGRect, selected: Bool) {
        //// Star Drawing
        let starPath = UIBezierPath()
        starPath.moveToPoint(CGPointMake(56.75, 2))
        starPath.addLineToPoint(CGPointMake(68.59, 39.46))
        starPath.addLineToPoint(CGPointMake(107.87, 39.14))
        starPath.addLineToPoint(CGPointMake(75.9, 61.97))
        starPath.addLineToPoint(CGPointMake(88.34, 99.23))
        starPath.addLineToPoint(CGPointMake(56.75, 75.89))
        starPath.addLineToPoint(CGPointMake(25.16, 99.23))
        starPath.addLineToPoint(CGPointMake(37.6, 61.97))
        starPath.addLineToPoint(CGPointMake(5.63, 39.14))
        starPath.addLineToPoint(CGPointMake(44.91, 39.46))
        starPath.closePath()
        UIColor.blackColor().setStroke()
        starPath.lineWidth = 1

        
        // needs to fit into width x height
        let scale = CGAffineTransformMakeScale(rect.width/100, rect.height/100)
        starPath.applyTransform(scale)
        let translation = CGAffineTransformMakeTranslation(rect.origin.x, rect.origin.y)
        starPath.applyTransform(translation)
        starPath.stroke()
        if selected {
            starPath.fill()
        }
        
    }
}