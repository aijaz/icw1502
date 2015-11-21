//
//  ViewController.swift
//  HypnoRect
//
//  Created by Aijaz Ansari on 11/7/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, RaterDelegate {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var hypnoView: HypnoView!
    @IBOutlet weak var raterView: Rater!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        raterView.delegate = self
        self.raterView.stencil = Circle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleSlider(sender: AnyObject) {
        hypnoView.lineWidth = CGFloat(Int(slider.value))
    }

    func ratingSetTo(rating rating: Int) {
        if rating > 0 {
            hypnoView.lineWidth = CGFloat(rating * 2)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showNumericEntry" {
            let dest = segue.destinationViewController as! NumericInputViewController
            let currentWidth = Int(hypnoView.lineWidth)
            dest.initialWidth = currentWidth
            
            dest.textHandler = { text in
                var width = 5
                if let text = text {
                    if let intWidth = Int(text) {
                        if intWidth > 0 && intWidth < 20 {
                            width = intWidth
                        }
                    }
                }
                self.hypnoView.lineWidth = CGFloat(width)
            }

        }
    }
}

