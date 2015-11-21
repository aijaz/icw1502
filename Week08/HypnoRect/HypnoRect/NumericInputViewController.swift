//
//  NumericInputViewController.swift
//  HypnoRect
//
//  Created by Aijaz Ansari on 11/20/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

typealias TextHandler = (theText: String?)->()

class NumericInputViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var textHandler:TextHandler?
    var initialWidth:Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let initialWidth = initialWidth {
            self.textField.text = "\(initialWidth)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func hendleDismiss(sender: UIButton) {
        textHandler?(theText: textField.text)
        dismissViewControllerAnimated(true, completion: nil)
    }
}
