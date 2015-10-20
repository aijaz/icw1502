//: Playground - noun: a place where people can play

import UIKit

enum Color {
    case Red
    case Green
    case Blue
    
    var actualColor: UIColor {
        switch self {
        case .Red :
            return UIColor.redColor()
        case .Blue :
            return UIColor.blueColor()
        case .Green :
            return UIColor.greenColor()
        }
    }

    func colorSwatch(width width: Int, height: Int) -> UIView {
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        myView.backgroundColor = self.actualColor
        return myView;
    }

}

let crayon = Color.Red
crayon.actualColor

let paintBrush = Color.Blue
paintBrush.actualColor

crayon.colorSwatch(width: 300, height: 200)














