//
//  ViewController.swift
//  HelloWorld
//
//  Created by Aijaz Ansari on 9/18/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        print("Hello, world!")
    }

}

