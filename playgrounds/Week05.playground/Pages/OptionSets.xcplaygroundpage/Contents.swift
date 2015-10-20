//: [Previous](@previous)

import Foundation

// char
// bold is bit 0
// italics is bit 1
// 00000000 bold on
// 00000001 bold off
// 00000010 italics, no bold
// 00000011 italics and bold
// value of bold is 1
// value of italics 2
// 4, 8 , 16

struct TextFormat : OptionSetType {
    let rawValue: Int
    static let Bold = TextFormat(rawValue: 1)
    static let Italics = TextFormat(rawValue: 2)
    static let Underline = TextFormat(rawValue: 4)
    static let StrikeThrough = TextFormat(rawValue: 8)
}

var myFormat : TextFormat = []
myFormat.contains(.Bold)

var headline: TextFormat = [.Bold, .Italics]
headline.contains(.Bold)
headline.contains(.Underline)













//: [Next](@next)
