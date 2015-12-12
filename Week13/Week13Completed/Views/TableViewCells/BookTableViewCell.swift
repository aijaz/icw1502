//
//  BookTableViewCell.swift
//  TableViewBooks
//
//  Created by Aijaz Ansari on 11/21/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var pages: UILabel!
    @IBOutlet weak var bookImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
