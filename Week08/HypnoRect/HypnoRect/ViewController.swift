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
}

