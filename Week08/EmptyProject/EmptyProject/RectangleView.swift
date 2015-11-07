//
//  RectangleView.swift
//  EmptyProject
//
//  Created by Aijaz Ansari on 11/7/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

class RectangleView: UIView {

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        let path = UIBezierPath()
        path.lineWidth = 10
        path.lineCapStyle = .Square
        path.lineJoinStyle = .Miter
        
        path.moveToPoint(CGPoint(x: 10, y: 10))
        path.addLineToPoint(CGPoint(x: 60, y: 10))
        path.addLineToPoint(CGPoint(x: 60, y: 60))
        path.addLineToPoint(CGPoint(x: 10, y: 60))
        path.addLineToPoint(CGPoint(x: 10, y: 10))
        
        
        path.stroke()
        path.fill()
    }

}
