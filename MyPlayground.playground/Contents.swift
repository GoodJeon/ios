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
let alphabetA: Character = "A"
print(alphabetA)

// 유니코드도 사용 가능
let commandCharacter: Character = "👍"
print(commandCharacter)

let 한글변수: Character = "ㄱ"
print("피방 \(한글변수)")




// String: 문자열
// 상수(let)으로 선언된 문자열은 변경 불가
let meal: String = "rice"

// 이니셜 라이저를 사용해 빈 문자열 생성 가능
// 변수(var)는 변경 수정 가능
var introduce: String = String()

// append()와 + 연산자를 통해 문자열 잇기
introduce.append("소개합니다.")
introduce = introduce + "저는" + " " + meal + "을 좋아합니다."
print(introduce)

// 문자의 수도 셀 수 있음
print(introduce.count)

// .isEmpty 로 빈 문자열의 여부도 확인
print("is introduce empty? \(introduce.isEmpty)")

// 유니코드 스칼라 값 사용 시 값에 해당하는 표현 출력
let unicodeScalarValue: String = "\u{2665}"

let lets = "Let's"
let go = "Go!"
var start = lets + " " + go


// 연산자로 문자열 비교
var bool1: Bool = false
var bool2: Bool = true
var bool3: Bool = false

bool1 = meal == "rice"
print(bool1)
print(bool2 == bool3)


// 메서드로 접두 접미어 확인
var hasPrefix: Bool = false
hasPrefix = "hello haha".hasPrefix("he")
print(hasPrefix)

var hasSuffix: Bool = false
hasSuffix = "hello haha".hasSuffix("ha")
print(hasSuffix)


//메서드로 대소문자 변환
var convertedString: String = ""
convertedString = "abcdef".uppercased()
print(convertedString)

var convertedString2: String = ""
convertedString2 = "ABCDEF".lowercased()
print(convertedString2)


// 프로퍼티를 통해서 빈 문자열 확인
var isEmptyString: Bool = false
isEmptyString = "".isEmpty

var isEmptyStringTwo: Bool = false
isEmptyStringTwo = " ".isEmpty

print(isEmptyString, isEmptyStringTwo) // 스페이스(공백)이 들어가면 비어있지 않은 것으로 판단



// 프로퍼티 활용 문자열 길이 확인
print(convertedString.count)
convertedString = "a"
print(convertedString.count)


// """을 이용한 여러 줄에 걸친 문자열
greeting = """
안녕하십니까. 전동준이에요. 취업은 언제 할 수 있을까요?..
"""

greeting.append("\n못하세요..")
print(greeting)

print("개행 문자를 사용하면 이렇게 \n 되고  백슬러시를 사용하기 위해서는 두번! \\ 하면 된다. 이스케이프 문자라고 한다.")
print("큰 따옴표 앞에도 \" 되고  탭키를 원한다면 \t 을 사용하면 된다. 만약에 문자열이 끝났음을 알리려면 \0")




// Any, AnyObject, nil
var someVar: Any = "goodjeon"
someVar = 50
someVar = 100.1


// 타입 추론
var test3 = "Kwanhee"
// test3 = 100 // 앞서 타입 추론에 의해 test3은  String으로 선언되어 정수 할당 시 오류 발생


// Type Alias
typealias MyInt = Int
typealias YourInt = Int
typealias MyDouble = Double

let ages: MyInt = 100 // MyInt는 Int의 또다른 별칭
var year: YourInt = 2080 // YourInt도 Int의 또다른 별칭

year = ages // 같은 타입으로 취급되어 할당이 가능



// Tuple
// Tuple Basic
// (1) String, Int, Double 타입을 갖는 튜플
var person: (String, Int, Double) = ("goodjeon", 100, 178.8)

// if you use index, Value Extracting is possbile
print("이름:\(person.0), 나이:\(person.1), 키:\(person.2)")

person.1 = 10
person.2 = 123.4

print("이름:\(person.0), 나이:\(person.1), 키:\(person.2)")
// (2) 튜플 요소에 이름을 지정하는 경우
var person2: (name: String, age: Int, height: Double) = ("goodjeon", 100, 178.8)
print("이름:\(person2.name), 나이:\(person2.age), 키:\(person2.height)")


// 튜플에 별칭을 지정
typealias PersonTuple = (name:String, age:Int, height:Double)
var dongjun: PersonTuple = ("dongjun", 123, 456.7)
print("이름:\(dongjun.0), 나이:\(dongjun.age), 키:\(dongjun.2)")




// Collection(array, dictionary, set)

// Array
// 대괄호로 배열임을 표현
var names: Array<String> = ["dongjun", "juho", "donggeun", "sunghwan"]
//var names: [String] = ["dongjun", "juho", "donggeun", "sunghwan"] // 위와 같음

var emptyArray: [Any] = []
var emptyArray2: [Any] = Array<Any>()
var emptyArray3: [Any] = []

print(emptyArray.isEmpty, emptyArray2.isEmpty, emptyArray3.isEmpty)
print(names.isEmpty)
print(names.count, emptyArray.count)



print(names[2])
names[2] = "jenny"
print(names[2])
//print(names[4]) // index out of range

//names[4] = "elsa" // 인덱스의 범위를 벗어남
names.append("elsa") // 마지막에 엘사를 추가하고
names.append(contentsOf: ["john", "max"]) // 존과 맥스도 동시에 추가
names.insert(contentsOf: ["jinhee", "minsoo"], at: 5) // 인덱스 5 자리에 진희와 민수도 추가

print(names[4])
print(names.index(of:"dongjun"))
print(names.index(of:"christal"))
print(names.first, names.last) // 처음과 끝의 요소도 가져올 수 있다.

let firstItem: String = names.removeFirst()
let lastItem: String = names.removeLast()
let indexZeroItem: String = names.remove(at: 0)
print("--------------")
print(firstItem)
print(firstItem)
print(lastItem)
print(indexZeroItem)
print(names[0...3])


// Dictionary
typealias StringIntDict = [String:Int]
//var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()
//var numberForName2: [String:Int] = [String:Int]()
//var numberForName3: StringIntDict = StringIntDict()
//var numberForName4: [String:Int] = [:]
var numberForName: [String: Int] = ["yagom": 100, "chulsoo": 200, "jenny": 300]

print(numberForName.isEmpty)
print(type(of:numberForName))

// 특정 키에 해당 하는 값 제거 = removeValue(forkey:)
print(numberForName["chulsoo"])
print(numberForName["minji"])

numberForName["chulsoo"] = 150
print(numberForName["chulsoo"])

numberForName["max"] = 999
print(numberForName["max"])

print(numberForName.removeValue(forKey: "yagom"))

print(numberForName.removeValue(forKey: "yagom"))

print(numberForName["yagom", default:0])


// Set
var sets1: Set<String> = Set<String>()
var sets2: Set<String> = []

var sets3: Set<String> = ["yagom", "chulsoo", "younghee", "yagom"]


// array와 같은 대괄호를 사용하므로 타입 추론으로는 선언할 수 없다.


// set 요소 추가 : insert(_:), set 요소 삭제 : remove(_:)
print(sets3.count)
sets3.insert("jenny")
print(sets3.count)
print(sets3.remove("chulsoo"))
print(sets3.remove("john"))




// 세트 활용 - 집합 연산
let engClassStudents: Set<String> = ["john", "chulsoo", "yagom"]
let korClassStudents: Set<String> = ["jenny", "yagom", "chulsoo", "hana", "minsoo"]

// "yagom", "chulsoo" 교집합
let intersectSet: Set<String> = engClassStudents.intersection(korClassStudents)

// 여집합의 합
let symmetricDiffSet: Set<String> = engClassStudents.symmetricDifference(korClassStudents)

// 합집합
let unionSet: Set<String> = engClassStudents.union(korClassStudents)

// 차집합
let subtractSet: Set<String> = engClassStudents.subtracting(korClassStudents)

print(unionSet.sorted())

// 포함관계 연산
let 새: Set<String> = ["비둘기", "닭", "기러기"]
let 포유류: Set<String> = ["사자", "호랑이", "곰"]
let 동물: Set<String> = 새.union(포유류)

print(새.isDisjoint(with: 포유류)) // 배타적인가? true
print(새.isSubset(of: 동물)) // 새가 동물의 부분집합인가 ? true
print(동물.isSuperset(of: 포유류)) // 동물은 포유류의 전체집합? true
print(동물.isSuperset(of: 새)) // 동물은 새의 전체집합? true


// 임의 요소 추출과 섞기

var string: String = "string"
string.shuffled()
string.randomElement()





// 열거형(Enum)

enum School {
    case primary // 유치원
    case elementary // 초등
    case middle // 중등
    case high // 고등
    case college // 대학
    case university // 대학교
    case graduate // 대학원
}


var highestEducationalLevel : School = School.university // : School =. university 도 같은 표현

highestEducationalLevel = .graduate  // 같은 타입 내의 항목으로 변경 가능

// 원시값(Raw Value)
// 특정 타입의 값을 가질 수 있고, rawValue 라는 프로퍼티를 통해 원시값을 사용할 수도 있다.

enum SSchool: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
    case graduate = "대학원"
}

let highestLevel: SSchool = SSchool.university

print("제 최종 학력은 \(highestLevel)입니다.")


enum WeekDays: Character {
    case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: WeekDays = WeekDays.tue
print("today is \(today.rawValue)요일")


enum Numbers: Int {
    case zero
    case one
    case two
    case test
    case ten = 10
}

print("\(Numbers.zero.rawValue), \(Numbers.two.rawValue), \(Numbers.test.rawValue), \(Numbers.ten.rawValue)")


let primary = SSchool(rawValue: "유치원")
let graduate = SSchool(rawValue: "석박사")
let one = Numbers(rawValue: 1)
let four = Numbers(rawValue: 4)






func greet() {
    for i in 1...4 {
        print("hello")
    }
}

greet()


func greeting1() {
    print("Hello")
    
    func greeting2() {
        print("Hey")
    }
    
    greeting2()
}



greeting1()
