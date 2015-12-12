//
//  Book.swift
//  TableViewBooks
//
//  Created by Aijaz Ansari on 11/21/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

import Foundation
enum Language : String {
    case English
    case Arabic
}

struct Book {
    var title: String
    var author: String
    var pages: Int
    var image: String?
    var thumb: String?
    var language: Language
}