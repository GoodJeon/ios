import UIKit
import Swift

var greeting = "Hello, playground"

var j: Int = 0

for i in 0...3 {
    j += i
}


struct BasicInformation {
    let name: String
    var age: Int
    
}


var goodjeonInfo: BasicInformation = BasicInformation(name: "goodjeon", age: 28)

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

let goodjeon: Person = Person()
goodjeon.height = 178.8
goodjeon.weight = 97

print(goodjeonInfo)
print(goodjeon)
dump(goodjeon)



let name: String = "dongjun"
print("Hi, I'm \(name)")

// 한 줄 주석

/*
 여러 줄 주석
 하하
 */

/* 중첩 주석
 // 중첩 주석 중입니다.
 */



