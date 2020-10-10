
//: [Previous](@previous)

//元组
var name = (first: "Taylor", second: "Swift")
name.0
name.first
//name = (first: "Taylor", sex: "female")

//创建字典
let favoriteColor = [
  "Anna": "Blue",
  "Bob": "Black"
]
favoriteColor["Anna"] //"Blue"
favoriteColor["Cindy"] //nil
//设置默认值
favoriteColor["Cindy", default: "Unknown"]
favoriteColor["Cindy"]



//1. 基本数据类型
var a: String = "Hello world"
var b: Int = 10
var c: Float = 1.3
var d: Double = 1.4
var e: Character = "A"

//2. 类型推断
var str = "Hello"
print(str)

//3. 判断数据类型
type(of: str)

//4. 拼接字符串
var str1 = "Hello,"
var str2 = "world"
print(str1 + str2)
let num = 10
print(str1 + "\(num)")
print(str1, num)

var opt1: String? = "hi"
print(opt1!)

if(opt1 == nil) {
    print("no value")
} else {
    print("opt1 = " + "\(opt1!)")
}

var arr: [Int] = [1, 2, 3]
print(arr)

var set1 = Set<Int>([1,2,3,2])
print(set1)

var set2: Set<Int> = Set([1,2,3,2])
print(set2)


/*:
 #### 常量
 - 只能赋值一次
 - 其值不要求在编译时期确定，但使用之前必须赋值一次
 - 常量、变量在初始化之前都不能使用
 */

let age1 = 10
print(age1)

let age2 : Int //需要声明类型 let age2 则出错
age2 = 1
print(age2)

func getAge() -> Int {
    return 30
}
let age3 = getAge()
print(age3)


let error = (404, "Not Found")
error.0
error.1

let age = 3
switch age {
case 1:
    fallthrough
case 2:
    print("1 or 2")
case 3, 4:
      print("3 or 4")
default:
    break
}
//元组匹配
let point = (1, 2)
switch point {
case (0, 0):
    print("The origin")
case (_, 0):
    print("On the x-axis")
case (0, _):
    print("On the y-axis")
case (-2...2, -2...2):
    print("Inside the box")
default:
    print("Outside the box")
}

let point1 = (1, 2)
switch point1 {
case let (x, y) where x == y:
    print("On the line x == y")
case let (x, y) where x == -y:
    print("On the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is an arbitrary point.")
}

//: [Next](@next)
