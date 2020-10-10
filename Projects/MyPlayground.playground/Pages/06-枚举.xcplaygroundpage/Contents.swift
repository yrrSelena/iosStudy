//: [Previous](@previous)

import Foundation

//定义枚举类型
enum Direction {
    case north
    case south
    case east
    case west
}


//多个成员值可以写在同一行，用逗号隔开
enum Direction1 {
    case north, south, east, west
}


var direction = Direction.south
//direction = .north
//print(direction.rawValue)

//switch
switch direction {
case .north:
    print("Direct to north")
case .south:
    print("Direct to \(direction)")
default:
    print("Direct to \(direction)")
}


enum Direction2: Int {
    case north, south, east, west
}
let direction2 = Direction2.north
print(direction2.rawValue)

var direction2_1 = Direction2(rawValue: 1)
print(direction2_1!)

enum Direction3: String {
    case north, south, east, west
}
let direction3 = Direction3.north
print(direction3.rawValue)


enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupyter, Saturn, Uranus, Neptune
}

var planet = Planet.Mercury
var planet1: Planet
planet1 = .Earth //若变量已被声明为Planet类型，可以用.将变量赋值为该类型的另一个枚举成员
print(planet.rawValue)

enum Fruit: CaseIterable {
    case apple, orange, banana
}

for fruit in Fruit.allCases {
    print(fruit)
}

print(type(of: Fruit.allCases))



//: - 关联值
enum Job {
    case developer(year: Int)
    case doctor(year: Int, department: String)
    case teacher(year: Int)
}
//枚举类型的变量和常量在同一时间只能存储某一个枚举成员
//可以通过var或let提取每个枚举成员的关联值
//如果一个枚举成员的所有关联值都被提取为常量/变量，可以在成员名称前标注let/var(如let .teacher(year))
var job = Job.developer(year: 5)
job = .developer(year: 6)
switch job {
case .developer(let year), .doctor(let year, _), let .teacher(year):
    print("You have \(year) year(s) of experience.")
}



enum Foo {
    case a(Int)
    case b(Int, Int)
    case c(Int, String, Int)
    case d(String)
}

let test = Foo.c(1, "c", 3)
switch test {
case .a(let i), .b(_, let i), .c(_, _, let i):
    print(i)
default:
    break
}


switch test {
case let .b(i, j), let .c(j, _, i):
    print(i, j)
default:
    break
}

//: [Next](@next)
