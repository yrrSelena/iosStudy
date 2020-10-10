//: [Previous](@previous)

import Foundation

var closureFunc: () -> Void = {() -> Void in
   print("closureFunc")
}

closureFunc()

print(type(of: closureFunc))

var closureFunc1: () -> Void = {
    print("closureFunc1")
}
closureFunc1()
print(type(of: closureFunc1))


var closureFunc2 = {print("closureFunc2")}
closureFunc2()
print(type(of: closureFunc2))


func test1(param: () -> Void) {
    param()
}
test1(param: {() -> Void in
    print("testA")
})
test1(param: {print("testB")})
test1{print("testC")}


func test2(param: (Int) -> Void) {
    param(10)
}
test2(param: {(value: Int) -> Void in
    print(value)
})
test2(param: {(value) in
    print(value)
})
test2{(value) in
    print(value)
}

func test3(param: (Int, Int) -> Int) {
    print(param(10, 20))
}
test3(param: {(item1: Int, item2: Int) -> Int in
    return item1 + item2
})
test3(param: {return $0 + $1})
test3(param: {$0 + $1})

//: [Next](@next)
