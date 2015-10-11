//: [Previous](@previous)

// Value Types
// Reference Types

// EVERYTHING IN SWIFT IS A VALUE TYPE
// except classes
// ALMOST EVERYTHING IN SWIFT IS **NOT** A CLASS

var x = 7
var y = x
x
y

//      +---+
//  x-> | 7 |
//  y-> +---+
//

x = 5
//      +---+
//  x-> | 5 |
//      +---+
//
//      +---+
//      | 7 |
//  y-> +---+
//

x
y


var name1 = "kljsldkjflskdjflksdjflksjd flksjdf lksjdf ls"
var name2 = name1

name1
name2

name1 = "Aijaz"
name1
name2


class Person {
    var name:String
    init() {
        name = ""
    }
}

var firstSon = Person()
firstSon.name = "Aijaz"

var secondSon = Person()
secondSon.name = "Adel"

var brother = secondSon

//
//        +-------------+
//  f->   | Aijaz       |
//        +-------------+
//
//        +-------------+
//  s->   | Adel        |
//  b->   +-------------+
//

firstSon
secondSon
brother
brother.name = "Doofus"
//
//        +-------------+
//  f->   | Aijaz       |
//        +-------------+
//
//        +-------------+
//  s->   | Doofus      |
//  b->   +-------------+
//
//
// .---------------------------

brother
secondSon

// IN SWIFT ARRAYS ARE VALUE TYPES

var xNums = [0, 1, 2]
var yNums = xNums

xNums
yNums

xNums[0] = 100

xNums
yNums

var kids = [firstSon, secondSon]
var students = kids

//
//        +-------------+
//  f->   | Aijaz       |
//        +-------------+
//
//        +-------------+
//  s->   | Doofus      |
//        +-------------+
//
// kids = [f, s]
// students = [f, s]
//

var graduate = Person()
graduate.name = "Shahed"
students[0] = graduate

kids
students

var second = kids[1]
second.name = "Adel"

//
//        +-------------+
//  f->   | Aijaz       |
//        +-------------+
//
//        +-------------+
//  s->   | Adel        |
//        +-------------+
//
//        +-------------+
//  s2->  | Shahed      |
//        +-------------+

// kids = [f, s]
// students = [s2, s]
//


kids
students




//: [Next](@next)
