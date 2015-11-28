//
//  Circle.swift
//  HypnoRect
//
//  Created by Aijaz Ansari on 11/8/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

struct Circle:Stencil {
    func draw(rect: CGRect, selected: Bool) {
        // draw the circle as a 100x100 circle
        let path = UIBezierPath(arcCenter: CGPoint(x: 50, y: 50), radius: 48, startAngle: 0, endAngle: CGFloat(2 * M_PI), clockwise: true)
        
        // needs to fit into width x height
        let scale = CGAffineTransformMakeScale(rect.width/100, rect.height/100)
        path.applyTransform(scale)
        let translation = CGAffineTransformMakeTranslation(rect.origin.x, rect.origin.y)
        path.applyTransform(translation)
        path.stroke()
        if selected {
            path.fill()
        }
        
    }
}