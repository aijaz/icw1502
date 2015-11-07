//
//  HypnoView.swift
//  HypnoRect
//
//  Created by Aijaz Ansari on 11/7/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

class HypnoView: UIView {
    
    var lineWidth: CGFloat = 16.0 {
        didSet {
            setNeedsDisplay() // if the line view is set, mark the view as dirty
        }
    };
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        // create a path and set up reasonable defaults
        let path = UIBezierPath()
        path.lineCapStyle = .Square
        path.lineJoinStyle = .Miter
        path.lineWidth = lineWidth
        
        var x1 = lineWidth
        var y1 = lineWidth
        var x2 = rect.size.width - lineWidth
        var y2 = rect.size.height - lineWidth
        
        repeat {
            path.moveToPoint(CGPoint(x: x1, y: y1))
            path.addLineToPoint(CGPoint(x: x2, y: y1))
            path.addLineToPoint(CGPoint(x: x2, y: y2))
            path.addLineToPoint(CGPoint(x: x1, y: y2))
            path.addLineToPoint(CGPoint(x: x1, y: y1))
            path.stroke()
            x1 += lineWidth * 2
            x2 -= lineWidth * 2
            y1 += lineWidth * 2
            y2 -= lineWidth * 2
        } while x1 < x2 && y1 < y2
        
    }

}
