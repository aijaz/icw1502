//
//  NumberEntryViewController.swift
//  ViewControllers
//
//  Created by Aijaz Ansari on 11/14/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

typealias TextHandler = (theText: String?)->()

class NumberEntryViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
//    var delegate: NumberEntryReceiver?
    var textHandler:TextHandler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("NumberEntryVC loaded")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        NSLog("NumberEntryVC will appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        NSLog("NumberEntryVC appeared")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        NSLog("NumberEntryVC will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        NSLog("NumberEntryVC disappeared")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func handleDismiss(sender: AnyObject) {
        // give the string in textField.text to the caller/presenter
//        if let str = textField.text {
//            if let intValue = Int(str) {
//                delegate?.numberReceived(intValue)
//            }
//            
//        }
        
        textHandler?(theText: textField.text)
        dismissViewControllerAnimated(true, completion: nil)
    }

}
