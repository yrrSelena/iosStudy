//: [Previous](@previous)

import Foundation

struct Student {
    var name = "unknown"
    var age = 0
    var score = 0.0
    var isPassed = false
    
    static let schoolName = "Stanford"
    
    init() {
        
    }
    
    init(name: String, age: Int, score: Double) {
        self.name = name
        self.age = age
        self.score = score
        self.isPassed = self.score >= 60 ? true : false
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
    
    func getScore() -> Double {
        return self.score
    }
    
    func getIsPassed() -> Bool {
        return self.isPassed
    }
    
    mutating func setScore(score: Double) {
        self.score = score
        self.isPassed = self.score >= 60 ? true : false
    }
    
}


var student = Student()
print(student.getAge())

var student1 = Student(name: "Anna", age: 18, score: 46.5)
print("Name:" + student1.name)
print("Age: \(student1.getAge())")
print("Score:" + String(student1.getScore()))
print("Passed:" + String(student1.getIsPassed()))
print("School:", Student.schoolName)


//: [Next](@next)
