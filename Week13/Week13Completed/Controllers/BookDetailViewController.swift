//
//  BookDetailViewController.swift
//  Week13Start
//
//  Created by Aijaz Ansari on 12/11/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

typealias CompletionHandler = (Book)->()

class BookDetailViewController: UIViewController {
    var book:Book?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var pagesLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    var completionHandler: CompletionHandler?

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var fullImage: UIImageView!
    @IBOutlet weak var blurImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let book = book {
            titleLabel.text = book.title
            authorLabel.text = book.author
            pagesLabel.text = "\(book.pages)"
            languageLabel.text = book.language.rawValue
            
            if let image = book.image {
                fullImage.image = UIImage(named: image)
                blurImage.image = UIImage(named: image)
            }
        }
        navigationItem.title = "Detail"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func done () {
        completionHandler?(book!)
        dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
