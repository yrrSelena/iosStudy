//: [Previous](@previous)

import Foundation


func test1(param: Int) {
    guard param < 10 else {
        print("Enter guard")
        return
    }
    print("param: \(param)")
}

test1(param: 5)

//: [Next](@next)
