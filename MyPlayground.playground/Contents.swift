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




// 한 줄 주석

/*
 여러 줄 주석
 하하
 */

/* 중첩 주석
 // 중첩 주석 중입니다.
 */



/* 퀵 헬프 테스트
 * 안녕하세요
    * 들여쓰기 했는데
 ---
 하하하
 ---
 */





let test1: String = "dongjun"
var test2: String = "hi"
print(test1, test2)
//test1 = "goodjeon"
test2 = "bye"
print(test1, test2)

var num = 123.3

print("\(type(of: num))")

print(num)

let name: String = "dongjun"
var age: Int = 100
var job = "iOs Programmer"
let hieght = 178.8
age = 99
job = "Student"
//name = "동준" // 오류 발생




var integer: Int = -100
let unsignedInteger: UInt = 50 // UINt 에는 음수값 할당X
print("Integer의 값 : \(integer), unsignedInteger의 값 : \(unsignedInteger)")
print(Int.max, Int.min)
print(UInt.max, UInt.min)
let largeInteger: Int64 = Int64.max
let smallUInteger: UInt8 = UInt8.min

print("Int64의 최대값 :\(largeInteger), UInt8의 최소값 :\(smallUInteger)")

print(integer)
print(unsignedInteger)
//integer = UnsignedInteger // Int와 UInt는 대입 될 수 없음
print(integer + Int(unsignedInteger))



// 10진수, 2진수, 8진수, 16진수 표현
let decimal: Int = 10
let binary: Int = 0b1010
let octa: Int = 0o12
let hexa: Int = 0xA

print(decimal, binary, octa, hexa) // 모두다 10!



// Bool 타입
var boolean: Bool = true
boolean.toggle() // bool값 반전 : true -> false, false -> true
print(boolean) // false로 출력





// Float, Double 타입
// float은 소수점 6번째 자리까지, double은 15번째 자리까지
// 몇의 자리까지 사용할지 잘 모르겠다면 double을 사용하는 것을 추천



// Float이 수용할 수 있는 범위를 넘어선다.
// 자신이 감당할 수 있는 만큼만 남기므로 정확도가 떨어집니다.
var floatValue: Float = 1234567890.1

// Double은 충분히 수용할 수 있습니다.
let doubleValue: Double = 123456890.1

print("float : \(floatValue), double : \(doubleValue)")


floatValue = 123456.1
print(floatValue)
print(1.23e-5)
print(1.23e5)
print(0xap1)
print(0xap2)
print(0xap3)
print(0xap-3)

// 타입.random(in: x...y)
Int.random(in: -100...100)
UInt.random(in: 1...10)
Double.random(in: 1.5...2.0)
Float.random(in: -0.5...0)



// Character : 문자 하나(문자열 X)

