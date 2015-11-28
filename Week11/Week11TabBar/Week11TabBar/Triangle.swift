//
//  Triangle.swift
//  HypnoRect
//
//  Created by Aijaz Ansari on 11/8/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

struct Triangle:Stencil {
    func draw(rect: CGRect, selected: Bool) {
        // draw the circle as a 100x100 circle
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 50, y: 2))
        path.addLineToPoint(CGPoint(x: 98, y: 98))
        path.addLineToPoint(CGPoint(x: 2, y: 98))
        path.addLineToPoint(CGPoint(x: 50, y: 2))
        
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