import Foundation
import UIKit

public struct Item {
    var itemID: Int
    var name: String
    var manufacturer: String?
    var dateBought: NSDate?
    var valueWhenBought: Int?
    var currentValue: Int?
    var picture: UIImage?
    var serialNumber: String?
    var productURL: NSURL?
    var notes: String?
    
}

extension Item : CustomStringConvertible {
    public var description: String {
        return name
    }
}


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
