//
//  BookTableViewController.swift
//  TableViewBooks
//
//  Created by Aijaz Ansari on 11/21/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController, UISplitViewControllerDelegate {

    var books: [Book]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        
        // This is our model
        books = [
            Book(title: "Book1", author: "Author1", pages: 100, image: "A01.jpg", thumb: "thumbA01.jpg", language: .English),
            Book(title: "Book2", author: "Author2", pages: 200, image: "A02.jpg", thumb: "thumbA02.jpg", language: .English),
            Book(title: "Book3", author: "Author3", pages: 300, image: "A03.jpg", thumb: "thumbA03.jpg", language: .English),
            Book(title: "Book4", author: "Author4", pages: 400, image: "A04.jpg", thumb: "thumbA04.jpg", language: .English),
        ]
        
        /*
        books = getBooksFromDatabase()
        books = getBooksFromCloudUsingUrl(url: "https://mybooks.example.com/books")
        
        */
        navigationItem.title = "Books"
        navigationItem.rightBarButtonItem = editButtonItem()
        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "addItem")
        splitViewController?.preferredDisplayMode = .AllVisible
        // splitViewController?.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        // Configure the cell...
        let row = indexPath.row
        let book = books[row]
        var cellReuseID:String
        switch book.language {
        case .English :
            cellReuseID = "CellTypeEnglish"

        case .Arabic :
            cellReuseID = "CellTypeArabic"
        }
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellReuseID, forIndexPath: indexPath) as! BookTableViewCell
        
        cell.title.text = book.title
        cell.author.text = book.author
        cell.pages?.text = "\(book.pages)"
        if let thumb = book.thumb {
            cell.bookImageView.image = UIImage(named: thumb)
        }
        return cell
    }

    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            books.removeAtIndex(indexPath.row) // remove from data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
//        let b = books.removeAtIndex(fromIndexPath.row)
//        books.insert(b, atIndex: toIndexPath.row)
        
        books.insert(books.removeAtIndex(fromIndexPath.row), atIndex: toIndexPath.row)
    }

    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "ShowEnglishBookSegue" || segue.identifier == "ShowArabicBookSegue") {
            let detailViewController = segue.destinationViewController as! BookDetailViewController
            let indexPath = tableView.indexPathForSelectedRow
            let row = indexPath!.row
            let book = books[row]
            detailViewController.book = book
            detailViewController.completionHandler = { book in
                // change the main model
                self.books[row] = book
                self.tableView.reloadData()
            }
        }
    }

    @IBAction func addItem(sender: AnyObject) {
        performSegueWithIdentifier("newItemSegue", sender: self)
    }
    
}
