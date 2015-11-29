//
//  ViewController.swift
//  ImageViewer
//
//  Created by Aijaz Ansari on 11/28/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pickImage(sender: AnyObject) {
        if hasCamera() {
            
        }
        else {
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = false
            imagePicker.sourceType = .PhotoLibrary
            imagePicker.delegate = self
            self.presentViewController(imagePicker, animated: true, completion: nil)
        }
    }

    func hasCamera()->Bool {
        return UIImagePickerController.isSourceTypeAvailable(.Camera)
    }
    
    // -- 
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.contentMode = .ScaleAspectFit
            imageView.image = pickedImage
            
            // save image to file
            let imageData = UIImageJPEGRepresentation(pickedImage, 0.8)
            let fileName = NSUUID().UUIDString
            let documentsDir = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,.UserDomainMask,true)[0]
            let fullFilePath = documentsDir.stringByAppendingString("/\(fileName).jpg")
            let fileManager = NSFileManager.defaultManager()
            fileManager.createFileAtPath(fullFilePath, contents: imageData, attributes: nil)
            
            // delete old file if any and then set this to be the file.
//            if (filePath != nil) {
//                let filePathToBeDeleted = "\(documentsDir)/\(filePath)"
//                do { try fileManager.removeItemAtPath(filePathToBeDeleted) } catch {}
//            }
//            filePath = "\(fileName).jpg"
//            if let callback = completionCallback {
//                callback(filePath!)
//            }
            
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    

}

