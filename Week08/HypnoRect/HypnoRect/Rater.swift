//
//  Rater.swift
//  HypnoRect
//
//  Created by Aijaz Ansari on 11/7/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

protocol Stencil {
    func draw(rect: CGRect, selected: Bool)->()
}

protocol RaterDelegate {
    func ratingSetTo(rating rating: Int) ->()
}

class Rater: UIControl {

    let numSlots = 10
    var spacing:CGFloat = 6.0
    var width: CGFloat = 0.0
    var delegate: RaterDelegate?
    var stencil:Stencil?
    
    var value = 0 {
        didSet {
            setNeedsDisplay()
            delegate?.ratingSetTo(rating: value)
        }
    }
    
    override func drawRect(rect: CGRect) {
        let maxWidth = (rect.size.width - (spacing * CGFloat(numSlots + 1)))/CGFloat(numSlots)
        width = maxWidth
        if width > rect.size.height {
            width = rect.size.height
            spacing = (rect.size.width - (width * CGFloat(numSlots)))/CGFloat(numSlots + 1)
        }
        if let stencilToDraw = stencil {
            for i in 0 ..< numSlots {
                let rectToDrawIn = CGRect(x: spacing + CGFloat(i) * (width + spacing), y: 6, width: width, height: width)
                stencilToDraw.draw(rectToDrawIn, selected: i < value)
            }
        }
    }

    
    
    override func endTrackingWithTouch(touch: UITouch?, withEvent event: UIEvent?) {
        guard let theTouch = touch else {
            return
        }
        
        // if the touch when I let go is not inside self.bounds, then don't do anything
        if !CGRectContainsPoint(self.bounds, theTouch.locationInView(self)) {
            return
        }
        
        // I only care about the x location of the touch
        var x = theTouch.locationInView(self).x
        
        // delete spacing to get rid of the left-most offset
        x -= spacing
        
        // divide x by the cell size (width + spacing) to get an offset from 0 to numspaces
        let index = Int(x / (width + spacing))
        if index > 0 {
            self.value = index + 1
        }
        else {
            if self.value == 1 {
                self.value = 0
            }
            else {
                self.value = 1
            }
        }
        
    }
}
