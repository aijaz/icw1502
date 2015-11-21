import Foundation
import UIKit

public struct Item {
    let itemID: Int
    var name: String
    var manufacturer: String?
    var dateBought: NSDate?
    var valueWhenBought: Int?
    var currentValue: Int?
    var picture: UIImage?
    var serialNumber: String?
    var productURL: NSURL?
    var notes: String?

    init (itemID: Int, name: String) {
        self.itemID = itemID
        self.name = name
    }
    
}


extension Item : CustomStringConvertible {
    public var description: String {
        return name
    }
}

var i1 = Item(itemID: 1, name: "Aijaz")
i1.manufacturer = "FOO"


public enum DataSourceException : ErrorType {
    case NumberTooLargeException
    case NegativeNumberException
}


public struct ItemDataSource {
    var items: [Item]
    
    public init () {
        items = [Item]()
    }
    
    func itemAtIndex(index:Int) throws -> Item {
        if index < 0 {
            throw DataSourceException.NegativeNumberException
        }
        else if index >= items.count {
            throw DataSourceException.NumberTooLargeException
        }
        return items[index]
    }
    
    mutating func addItem(item: Item) {
        items.append(item)
    }
}
