//
//  ViewController.swift
//  ViewControllers
//
//  Created by Aijaz Ansari on 11/14/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

protocol NumberEntryReceiver {
    func numberReceived(num:Int)
}

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func manualPressed(sender: UIButton) {
        let newVc = NumberEntryViewController(nibName: "NumberEntryViewController", bundle: nil)
//        newVc.delegate = self
        newVc.textHandler = { string in
            if let string = string {
                // string is unwrapped
                if let intValue = Int(string) {
                    self.result.text = "You entered \(intValue)"
                }
                else {
                    self.result.text = "Invalid int"
                }
            }
            else {
                self.result.text = "Nothing entered"
            }
            // string is wrapped
        }
        presentViewController(newVc, animated: true, completion: nil)
    }
    
    @IBAction func volumeButtonPressed(sender: AnyObject) {
        let newVc = NumberEntryViewController(nibName: "NumberEntryViewController", bundle: nil)

        newVc.textHandler = { arg in
            if let arg = arg {
                self.volumeLabel.text = "You entered \(arg)"
            }
        }
        presentViewController(newVc, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GetWeightSegue" {
            let dest = segue.destinationViewController as! NumberEntryViewController
            dest.textHandler = { arg in
                if let arg = arg {
                    self.result.text = "Storyboard weight \(arg)"
                }
            }
        }
        else if segue.identifier == "GetVolumeSegue" {
            let dest = segue.destinationViewController as! NumberEntryViewController
            dest.textHandler = { arg in
                if let arg = arg {
                    self.result.text = "Storyboard volume \(arg)"
                }
            }
        }
    }
}


extension ViewController : NumberEntryReceiver {
    func numberReceived(num: Int) {
        result.text = "You selected \(num) !!!"
    }
}








