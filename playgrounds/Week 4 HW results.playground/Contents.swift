//: [Previous](@previous)

import Foundation

extension String {
    func len()->Int {
        return self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
    }
}

"Aijaz".lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
"Aijaz".len()
"Aijaz😄 ﷽".len()
"﷽".len()


let words = ["the", "quick", "brown", "fox", "jumps", "over", "a", "lazy", "dog"]

let lexical = words.sort()

let byWordLength = words.sort() { $0.len() < $1.len() }

byWordLength

"jumps".len()
"jump".len()
"jumps" < "jump"

let byWordLengthAndLexicalAscending = words.sort() {
    let l0 = $0.len()
    let l1 = $1.len()
    
//    return (l0 < l1 || $0 < $1)
    return (l0 < l1 || (l0 == l1 && $0 < $1) || (l0 > l1 && $0 < $1))
    
//    if l0 < l1 {
//        return true
//    }
//    else if l0 > l1 {
//        return false
//    }
//    
////    if $0 < $1 {
////        return true
////    }
////    else {
////        return false
////    }
//    return $0 < $1
}

//func sortByWordLengthAndLexicalAscending (s1: String, s2:String)->Bool {
//    return (s1.len() < s2.len() || (s1.len() == s2.len() && s1 < s2))
//}



// a ? b : c
// if a { 
//    b
// }
// else {
//    c
// }

// $0.len == $1.len ? $0<$1 : $0.len() < $1.len()

byWordLengthAndLexicalAscending


let test = "Aijaz"
test.len()




//: [Next](@next)
