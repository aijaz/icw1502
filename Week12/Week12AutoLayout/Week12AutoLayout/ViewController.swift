//
//  ViewController.swift
//  Week12AutoLayout
//
//  Created by Aijaz Ansari on 12/5/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blackViewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        if (blackViewHeight.constant == 256) {
            blackViewHeight.constant = 400
            label.text = "A"
        }
        else {
            blackViewHeight.constant = 256
            label.text = "ABCDE"
        }
        
        UIView.animateWithDuration(0.5) { () -> Void in
            self.view.layoutIfNeeded()
        }
    }

}

