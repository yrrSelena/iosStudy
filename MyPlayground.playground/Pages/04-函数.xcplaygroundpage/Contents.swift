//: [Previous](@previous)

import Foundation


//匿名函数
var array1 = [1, 3, 5, 0, 8, 2]
array1.sort(by: {(a, b) -> Bool in
    return a < b
})


//函数类型作为函数的参数
func calculate(param: (Int, Int) -> Int) -> Int {
    let value = param(1, 2)
    return value
}
func add(a: Int, b: Int) -> Int {
    return a + b
}
func minus(a: Int, b: Int) -> Int {
    return a - b
}
print(calculate(param: add))
print(calculate(param: minus))

func cal(param: Bool) -> (Int, Int) -> Int {
    return param ? add : minus
}
var tmp = cal(param: true)
print(tmp(1,2))




//calculateNested内嵌函数
func calculateNested(param: Bool) -> (Int, Int) -> Int {
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    func minus(a: Int, b: Int) -> Int {
        return a - b
    }
    return param ? add : minus
}
var tmpNested = calculateNested(param: true)
print(tmpNested(1,2))


//利用匿名函数
var value = calculate(param: {(a: Int, b: Int) -> Int in
    return a + b
})
print(value)





print("-------")
func testFunc2(param: [Int]) ->String {
    var temp: String = ""
    for item in param {
        temp += String(item)
    }
    return temp
}
var testFunc2_a: ([Int]) -> String = testFunc2
var array = [1, 2, 3]
print(testFunc2(param: array))
print(testFunc2_a(array))
var testFunc2_b: ([Int]) -> String = { (param: [Int]) -> String in //in不可省略
    //以下为实现方式
    var temp = ""
    for item in param {
        temp += String(item)
    }
    return temp
}
print(testFunc2_b(array))
print("-------")


func add10(param: inout Int) {
  param += 10
  print(param)
}
var num = 10
print("传递前 num = \(num)")
add10(param: &num)
print("传递后 num = \(num)")


//函数类型
var a: () -> Void //没有参数，没有返回值
var b: (Int, String) -> String //Int和String参数类型，String类型返回值
var c: (Bool, Array<Int>) -> String //Bool和Array<int>参数类型，String类型返回值
print("变量a的类型 = \(type(of: a))") //变量a的类型 = () -> ()


func testFunc1() -> Void {
    print("Function testFunc1()")
}
var testFunc1_a: () -> Void = testFunc1
testFunc1_a()

var testFunc1_b: () -> Void = { () -> Void in
    print("匿名函数")
}
testFunc1_b()







//: [Next](@next)
