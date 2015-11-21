//
//  NumericEntryTableViewController.swift
//  TableViewBooks
//
//  Created by Aijaz Ansari on 11/21/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

typealias entryHandler = (Int)->()

class NumericEntryViewController: UIViewController {

    var completionHandler: entryHandler?
    var initialValue:Int?
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        if let initialValue = initialValue {
            textField.text = "\(initialValue)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleDone(sender: AnyObject) {
        var numPages = 1
        if let pagesString = textField.text {
            if let numPagesUnwrapped = Int(pagesString) {
                numPages = numPagesUnwrapped
            }
        }
        completionHandler?(numPages)
        dismissViewControllerAnimated(true, completion: nil)
    }

}
