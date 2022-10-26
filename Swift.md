# Swift 문법 정리



## 1. 기초

### 명명 규칙
* Lower Camel Case : function, method, variable, constant
  * ex) departmentNum
* Upper Camel Case : class, struct, enum, extension 등과 같은 타입(Type)
  * ex) Day, Price 등
* **대소문자 구분**


### 콘솔로그
* print : 단순 문자열 출력
* dump : 인스턴스의 자세한 설명(Description 프로퍼티)까지 출력

### 문자열 보간법(String Interpolation)
* 프로그램 실행 중 문자열 내에 변수 또는 상수의 실질적인 값 표현을 위해 사용(파이썬의 f-string 느낌?..)
* `\()`
  

### 상수, 변수
* 상수 선언 키워드 : `let`
* 변수 선언 키워드 : `var`
* 상수 선언 : `let 상수명 : 타입 = 값`
* 변수 선언 : `var 변수명 : 타입 = 값`
* **값의 타입이 명확하면 타입 생략 가능하나, 나중에 값을 할당하려면 반드시 타입을 명시해야한다.**
* let을 사용해서 상수 선언 후 값을 변경하려고 하면 **에러**가 나옴


### 기본 데이터 타입
* Bool
  * `true` 혹은 `false`를 값으로 가질 수 있음
  * 파이썬과 다르게 0과 1을 불리언으로 사용할 수 없다고 한다.
* Int
  * 64비트
  * 정수형 
  * 양/음의 정수, 0 
* UInt(Unsigned Integer)
  * 64비트
  * 부호가 없는 정수형
  * Int타입 변수를 할당하려해도 에러 발생(까다로움)
* Float
  * 32비트 타입
  * 정수형(Int)타입 할당 가능
* Double
  * Double 타입에 Float값 할당하려하면 에러가 발생
* Character
  * 1글자(문자))표현을 위한 타입
  * UNICODE를 사용하기 때문에 유니코드를 사용하는 모든 문자를 넣어줄 수 있다.
* String
  * 여러 개의 문자 표현 가능
  * `+`를 사용해 문자열을 더해주기도 가능
  * **Character 타입을 수용할 수 없다.**

* **Swift는 다른 데이터 타입과 데이터 교환은 암시적으로 불가하다고 생각하면된다.**



### Any, AnyObject, nil
* Any : Swift의 모든 타입을 지칭하는 키워드
    ```swift
    var testAny: Any = 100
    testAny = "모든 타입 수용 가능"
    testAny = 1234.1234
    ```
    * 하지만 다른 정해진 기본 데이터 타입에 Any를 대입시키려 하면 에러 발생

* AnyObject : 모든 클래스 타입을 지칭하는 프로토콜
    ```swift
    class TestClass {}
    var testAnyObject: AnyObject = TestClass()
    ```
* nil : 없음을 의미하는 키워드
  * `Any`나 `AnyObject`에 할당할 수 없다.

### 컬렉션 타입
* Array : 순서가 있는 리스트 컬렉션
  * 생성 예시 :  
    * 빈 Integer Array 생성 : `var integers: Array<Int> = Array<int>()`
    * 빈 String Array 생성 : `var strings: [String] = [String]()`
    * 빈 Double Array 생성 : `var doubles: Array<Double> = [Double]()`
    * 빈 Character Array 생성 : `var charcaters: [Character] = []`

  * `.append()`를 사용해서 요소를 보낼 수 있음(정수형이면 정수형만, float 등 불가)
  * `.contains()`는 배열이 해당 요소를 갖고 있는가 불리언 값으로 돌려받음
  * `.remove()`를 사용해 인덱스를 사용해 요소를 제거할 수 있음
    * 인덱스 사용 : `integers.remove(at:0)`
    * 마지막 멤버 삭제 : `integers.Last()`
    * 모든 멤버 삭제 : `integers.removeAll()`
  * `.count` : Array의 요소가 몇 개인가?
  
* Dictionary : 'key'와 'value'의 쌍으로 이루어진 컬렉션
  * 생성 예시 : `var testDictionary: Dictionary<String, Any> = [String: Any]()`
  * 키와 값의 타입을 지정해줄 수 있다.
  * `.removeValue(forKey: "키이름")`으로 원하는 키에 있는 값을 없애줄 수 있다.
  * 아니면 `testDictionary['키이름'] = nil`과 같이 nil을 사용해서 값을 비워줄 수 있다.
  * `[:]`로 빈 딕셔너리를 간편히 생성 가능
   
* Set : 순서가 없으며 멤버가 유일한 컬렉션
  * 생성 예시 : `var integerSet: Set<Int> = Set<Int>()`
  * `.insert()`를 사용해서 요소 추가
  * `.contains()`를 사용해서 요소가 있는지 확인 후 불리언 값 반환
  * `.remove()`를 사용해 원하는 요소 제거
    * 처음에 위치한 요소 제거 : `.removeFirst()`
  * `.count`를 사용해 set에 몇개의 요소가 있는지 확인
  * `.union()` : 합집합
  * `.sorted()` : 정렬
  * `.intersection()` : 교집합
  * `.subtracting()` : 차집합



### 함수
* 함수 생성 형태
  * 기본 생성 형태 : `func 함수이름 ( 매개변수명1: 매개변수1타입, 매개변수명2: 매개변수2타입, ...) -> 반환타입 {함수 구현부 return 반환값}`
    ```swift
    func sum(a: int, b: int) -> Int {
      return a + b
    }
    ```
  * 반환 값이 없는 경우 : `func 함수이름 (매개변수명1: 매개변수1타입, 매개변수명2: 매개변수2타입 ...) -> Void {함수 구현부 return 반환값}`
    ```swift
    func printLine(line: String) -> Void{
      print(line)
    }
    ```
  * 매개변수가 없는 경우 : `func 함수 이름 () -> 반환타입 { 함수 구현부 return 반환값}`
    ```swift
    func maxInteger() -> Int { return Int.max }
    ```

  * 매개변수와 반화낙ㅂㅅ이 없는 경우 : `func 함수이름 () -> Void {함수 구현부 return}`
    ```swift
    func eat() -> Void { print("eat meat 이트 미트")}
    ```

* 함수 호출은 매개변수와 반환값에 따라 사용

* 매개변수 기본값 : 기본값(default)를 갖는 매개변수는 매개변수가 있는 목록 중에서 가장 뒤에 놓는 것이 좋음
  * ex) `func 함수이름 ( 매개변수명1: 매개변수1타입, 매개변수명2: 매개변수 기본값) -> 반환타입 { 함수 구현부  return 반환값 }`
  * 매개변수 기본값을 가지는 매개변수는 **함수를 호출 할 때 해당 매개변수를 생략할 수 있다.**

* 전달인자 레이블 : 함수를 호출할 때 매개변수의 역할을 좀 더 명확히 하거나 함수 사용자의 입장에서 표현하고자 할 때 사용
  * ex) `func 함수이름 (전달인자 레이블 매개변수명1: 매개변수1타입, 전달인자 레이블 매개변수명2: 매개변수2타입 ...) -> 반환타입 { 함수 구현 부  return }`
  ```swift
  func greeting(to friend: String, from me: String) {
    print("Hi \(friend)! I'm \(me)")
    }

  greeting(to: "goodjeon", from: "dongjun")
  ```

* 가변 매개변수 : 전달 받을 값의 개수가 몇 개인지 알기 어려울 때, 가변 매개변수는 함수당 하나
* ex) `func 함수이름 (매개변수명1: 매개변수1타입, 전달인자 레이블 매개변수명2: 매개변수2타입...) -> 반환타입 { 함수 구현부  return }`
  ```swift
  func greetingTwo(me: String, friends: String...) -> String {
    return "Hi \(friends)! I'm \(me)"
  }

  print(greetingTwo(me: "goodjeon", friends: "juho", "donggeun", "hp"))
  ```

* 데이터 타입으로서의 함수
  * 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어
  * 스위프트의 함수는 일급 객체로 변수, 상수 등에 저장이 가능하며 매개변수를 통해서도 전달할 수도 있다.


* 함수의 타입표현
  * 반환타입 생략 X
  * ex) `(매개변수1타입, 매개변수2타입 ...) - > 반환타입`
  ```swift
  var someFunction: (String, String) -> Void = greeting(to:from:)
  someFunction("goodjeon", "dongjun") // Hi goodjeon! I'm dongjun

  someFunction = greeting(friend:me:)
  someFunction("goodjeon", "dongjun") // Hi goodjeon! I'm dongjun
  ```
  

### 조건문
* if-else 구문
  ```swift
  if condition {
    statements
  } else if condition {
    statements
  } else {
    statements
  }
  ```
  * **조건문에는 항상 Bool 타입**
  * 
* switch 구문
  ```swift
  switch value {
    case pattern:
        code
    default:
        code
  }
  ```
  * `..`으로 이상, 이하 표현 가능
  * `...` : 이상, 이하
  * 정수 외의 대부분의 기본 타입을 사용할 수 있음
  * 명시적으로 `break`를 해주지 않아도 알아서 걸린다.
  * `fallthrough` 사용 시 다음 case도 수행 가능


### 반복문
* for-in
  ```swift
  for item in items {
    code
  }
  ```
  * Dictionary의 item은 key와 value로 구성된 튜플 타입
  ```swift
  for (para1, para2) in params {
    code
  }
  ```
* while
  ```swift
  while condition {
    code
  }
  ```
* repeat-while
  ```swift
  repeat {
    code
  } while condition
  ```


### 옵셔널(Optional)
* 값이 있을 수도 있고 없을 수도 있다는 것을 뜻함
* `nil`의 가능성을 명시적으로 표현하기 위해서 사용
* 예시
  * 옵셔널 타입 명시(타입 뒤에 ?를 붙여주거나 !를 붙여주기) : `func functionName(someOptionalParam: Int?) {//...}`
    * `nil`이 들어갈 수 있음
  * 옵셔널 아닌 타입 명시 : `func functionName(someParam: Int) {//...}`

* optional = enum + general
  ```swift
  enum Optional<Wrapped> : ExpressibleByNilLiteral {
    case none
    case some(Wrapped)
  }

  let optionalValue: Optional<Int> = nil
  let optionalValue: Int? = nil
  ```

  * ?와 !의 차이
    * `!` : 암시적 추출 옵셔널, 기존 변수처럼 사용 가능, nil 할당 가능, 잘못된 접근으로 인한 런타임 오류도 발생
    * `?` : 일반적인 옵셔널, 기존 변수처럼 사용 불가(옵셔널과 일반 값은 다른 타입으로 연산 X), nil 할당 가능


### 옵셔널 추출(Optional Unwrapping)
* 옵셔널 추출법
  * Optional Binding(옵셔널 바인딩)
    * 옵셔널의 값을 꺼내오는 방법 중 하나
    * nil 체크 + 안전한 값 추출
    * `if-let` 방식 사용으로 추출 : if-let에서 사용하는 상수는 구문 내에서만 사용 가능, 벗어날 경우 컴파일 에러
    * 쉼표(,)를 사용해서 여러 요소를 바인딩 가능
    * 요소가 `nil`일 경우 오류
  * Force Unwrapping(강제 추출)
    * `nil` 값일 경우 강제추출할 값이 없어 런타임 에러 발생

---


## 2. 다양한 표현 및 확장

### 구조체(Struct)
* 타입을 정의, 대문자 카밀케이스 사용
* `struct 이름 { 구현부 }`
* 프로퍼티 : 스트럭트 안에 들어가는 인스턴스 변수라고 생각하면 될듯
  * `var` : 가변 프로퍼티
  * `let` : 불변 프로퍼티 
  * `static`을 붙여주면 : 타입 프로퍼티
* 메서드 : 구조체 안에 들어가는 함수
  * 일반적인 구조 : 인스턴스 메서드
  * `static`을 붙여주면 : 타입 메서드

* 구조체 사용법(예시)
  ```swift
  // 가변 인스턴스
  var mutable: Sample = Sample()
  // mutable.mutableProperty = 100
  
  // 불변 인스턴스
  let immutable: Sample = Sample()
  // immutable.mutableProperty = 200
  // immutable.immutableProperty = 200
  
  // 타입 프로퍼티 및 메서드
  Sample.typeProperty = 300
  Sample.typeMethod() // type method
  // mutable.typeProperty = 400 
  // 인스턴스에서 타임 프로퍼티 메서드 사용 불가
  ```
  
### 클래스(Class)
* 구조체와 매우 유사
* 클래스는 참조타입이며, 다중 상속이 되지 않는다.
* 정의 :  `class 이름 { 구현부 }`
* 프로퍼티 및 메서드가 존재하며 구조체와 크게 다르지 않음
* 다만, 타입 메서드가 두가지로 분류된다.
  * 재정의 불가 타입 메서드 `static` 
  ```swift
  static func typeMathod() {
    print("type method - static")
  }
  ```
  * 재정의 가능 타입 메서드 `class`
  ```swift
  class func classMethod() {
    print("type method - class")
  }
  ```

* **클래스는 구조체와 다르게 `var, let` 상관 없이 mutable, immutable의 mutableProperty는 변경 가능함**
* 하지만 처음부터 불변 인스턴스로 선언이 되어있다면 값을 바꿔줄 수 없음


### 열거형(enum)
* swift의 주요 기능 중 하나
* 각각의 케이스가 고유의 값으로 출력
* enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의
* 형태
  ```swift
  enum 이름 {
    case 이름1
    case 이름2
    case 이름3, 이름4, 이름5
    }
    
  enum Month {
    case jan
    case feb
    case mar
    case apr, may, jun, jul
  }
  ```
* 열거형 case를 나타내는 문법 : `var mon: Month = Month.jan` , `mon = .feb`
* switch에서도 자주 사용
  ```swift
  switch mon {
  case .jan, .feb, .mar:
    print("1분기 입니다.")
  case Month.apr:
    print("4월이 왔어요.")
  case .may, .jun:
    print("더워지기 시작해요..")
  ```

* 열거형을 C언어의 enum처럼 정수값을 가지게 하고 싶으면 **원시값(rawValue)**를 사용하면된다.**
  ```swift
  enum Fruit: Int {
    case apple = 0
    case orange = 1
    case banana
  }
  
  // 값을 꺼내오고 싶다면 다음과 같은 형태로
  
  print("\(Fruit.apple.rawvalue)")
  ```
* 정수 타입 뿐만이 아니라, **Hashable 프로토콜**을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있다.
* 문자열 타입 같은 경우는 원시값을 지정해주지 않으면 케이스의 이름 그대로가 원시값

* 원시값을 통한 초기화
  * rawValue를 통해 초기화 할수 있다.
  * rawValue가 case에 해당하지 않을 수 있으므로, 초기화한 인스턴스는 옵셔널 타입이다.
  ```swift
  let apple: Fruit? = Fruit(rawValue: 0)
  
  if let peach: Fruit = Fruit(rawValue: 4) {
   print("rawValue 4에 해당하는 케이스는 \(peach)입니다")
  } else {
     print("rawValue 4에 해당하는 케이스가 없습니다")
  }
  ```
* 열거형에는 메서드도 추가해 줄 수 있다.



### 값 타입(Value Type) / 참조 타입(Reference Type)
* Class
  * 전통적인 OOP 관점에서의 클래스
  * 단일 상속
  * (인스턴스/타입) 메서드
  * (인스턴스/타입) 프로퍼티
  * **참조타입**
  * Apple 프레임워크의 대부분의 큰 뼈대는 모두 클래스로 구성

* Struct
  * C언어 등의 구조체보다 다양한 기능
  * 상속 불가
  * (인스턴스/타입) 메서드
  * (인스턴스/타입) 프로퍼티
  * **값 타입**
  * Swift의 대부분의 큰 뼈대는 모두 구조체로 구성

* Enum
  * 다른 언어의 열거형과는 많이 다른 존재
  * 상속 불가
  * (인스턴스/타입) 메서드
  * (인스턴스/타입) 연산 프로퍼티
  * **값 타입**
  * Enumeration
  * 유사한 종류의 여러 값을 유의미한 이름으로 한 곳에 모아 정의(ex: 요일, 상태값, 월 등)
  * **열거형 자체가 하나의 데이터 타입, 열거형의 case 하나하나 전부 하나의 유의미한 값으로 취급**
  * 선언 키워드 - enum
 
* Class vs Struct vs Enum

| | Class | Struct | Enum |
|---|------|---|---|
| Type | Reference | Value | Value |
| Subclassing | O | X | X |
| Extension | O | O | O |


* 구조체를 사용할 때
  * 연관된 몇몇의 값들을 모아서 하나의 데이터 타입으로 표현하기 원할 때
  * 다른 객체 또는 함수로 전달될 때 **참조가 아닌 복사**를 원할 때
  * 자신을 상속할 필요가 없거나, 자신이 다른 타입의 상속받을 필요가 없을 때
  * Apple 프레임워크에서 프로그래밍을 할 때 주로 클래스를 많이 사용
 
 
* Value vs Reference
  * Value : 데이터를 전달할 때 값을 복사하여 전달
  * Reference : 데이터를 전달할 때 값의 메모리 위치를 전달

* 코드로 비교
```swift
// 클래스 vs 구조체/열거형

// 구조체 구현

struct ValueType {
  var property = 1
}

// 클래스 구현

class ReferenceType {
  var property = 1
}

let firstStructInstance = ValueType() // 구조체 상수 인스턴스 할당
var secondStructInstance = firstStructInstance // 첫 번째 구조체를 두 번째 구조체에 할당
secondStructInstance.property = 2 // 두 번째 인스턴스의 프로퍼티값 변경

print("first struct instance property : \(firstStructInstance.property)") // 값 : 1
print("second struct instance property : \(secondStructInstance.property)") // 값 : 2

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property)") // 값 : 2
print("second class reference property : \(secondClassReference.property)") // 값 : 2
```

* Swift의 데이터 타입
```swift
public struct Int
public struct Double
public sturct String
public struct Dictionary<key : Hashable, value>
public struct Array<Element>
public struct Set<Element : Hashable>
```

* Swift에서는 클래스보다는 **구조체, 열거형**을 선호함
* Apple 프레임워크는 대부분 클래스를 사용하므로, 해당 프레임워크를 사용시 구조체/클래스 선택은 사용자의 몫


### 클로저(Closure)
* 코드의 블럭
* **일급 시민(first-citizen)** 으로 변수, 상수 등으로 저장 가능하며 전달인자로도 전달이 가능하다.
* 함수 : 이름이 있는 클로저

* 정의
```swift
{ (매개변수 목록) -> 반환타입 in
  실행 코드
}

// 함수를 사용한다면
func sumFunction(a: Int, b: Int) -> Int {
  return a + b
}

var sumResult: Int = sumFunction(a: 1, b: 2)
print(sumResult) // 값 : 3

// 클로저의 사용
var sum: (Int, Int) -> Int = { (a: Int, b: Int) - > Int in
  return a + b
}
sumResult = sum(1,2)
print(sumResult) // 값 : 3

// 함수는 클로저의 일종으로 sum 변수에는 당연히 함수도 할당 가능
sum = sumFunction(a:b:)

sumResult= sum(1,2,)
print(sumResult) // 값 : 3
```

* 클로저는 함수의 전달인자로 주로 사용
```swift
let add: (Int, Int) -> Int
add = { (a: Int, b: Int) -> Int in
  return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
  return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in 
  return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
  return method(a, b)
}

var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)

print(calculated) // 값 : 60

calculated = calculate(a: 50, b: 10, method: substract)

print(calculated) // 값 : 40

calculated = calculate(a: 50, b: 10, method: divide)

print(calculated) // 값 :  5

```

* 클로저의 규칙
  1. 후행 클로저 : 함수의 매개변수 마지막으로 전달되는 클로저는 후행 클로저(trailing closure)로 함수 밖에 구현할 수 있습니다.
  ```swift
  result = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in 
    return left + right
  }
  ```
  2. 반환타입 생략 : 컴파일러가 클로저의 타입을 유추할 수 있는 경우 매개변수, 반환 타입을 생략할 수 있습니다.
  ```swift
  result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
  })
  
  print(result) // 20
  ```
  3. 단축 인자 이름 : 전달인자의 이름 굳이 필요없고, 컴파일러가 타입을 유추할 수 있는 경우 축약된 전달인자 이름($0, $1, $2)를 사용할 수 있습니다.
  ```swift
  result = calculate(a: 10, b: 10, method: {
    return $0 + $1
  })
  ```
  4. 암시적 반환 표현 : 반환 값이 있는 경우, 암시적으로 클로저의 맨 마지막 줄은 return 키워드를 생략하더라도 반환 값으로 취급합니다.
  ```swift
  result = calculate(a: 10, b:10) {
    $0 + $1
    
    
  // 조금 더 간단하게 한줄로
  result = calculate(a: 10, b: 10) { $0 + $1}
  
  // 축약 전후의 클로저 문법의 비교
  result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
  })
  
  result = calculate(a: 10, b: 10) { $0 + $1 }
  
  print(result) // 값 : 20

  ```
  
  
  
### 프로퍼티(Property)
* 타입과 연관된 값들을 표현할 때 사용
* 프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있다.
* 다만, 열거형 내부에는 연산 프로퍼티만 구현할 수 있다. **연산프로퍼티는 `var`로만 선언할 수 있다.**
* 종류
  * 저장 프로퍼티(stored property)
  * 연산 프로퍼티(computed property)
  * 인스턴스 프로퍼티(instance property)
  * 타입 프로퍼티(type property) 

* 정의
```swift
struct Student {

  // 인스턴스 저장 프로퍼티
  var name: String = ""
  var 'class': String = "Swift"
  var koreanAge: Int = 0
  
  // 인스턴스 연산 프로퍼티
  var westernAge: Int {
    get {
        return koreanAge - 1
    }
    
    set(inputValue) {
        koreanAge = inputValue + 1
    }
    
    
    // 타입 저장 프로퍼티
static var typeDescription: String = "학생"


// 인스턴스 메서드
func selfIntroduce() {
  print("저는 \(self.class)반 \(name)입니다")
}

// 읽기전용 인스턴스 연산 프로퍼티
var selfIntroduction: String {
  get {
      return "저는 \(self.class)반 \(name)입니다"
  }
}

 /*
 // 타입 메서드 
 static func selfIntroduce() {
 print("학생타입입니다")
 */

 // 읽기전용 타입 연산 프로퍼티
 // 읽기전용에서는 get을 생략할 수 있습니다
 static var selfIntroduction: String {
   return "학생타입입니다"
 }
}
```

* 사용
```swift
// 타입 연산 프로퍼티 사용
print(Student.selfIntroduction)
// 학생타입입니다.

// 인스턴스 생성
var goodjeon: Student = Student()
goodjeon.koreanAge = 28

// 인스턴스 저장 프로퍼티 사용
goodjeon.name = "dongjun"
print(goodjeon.name)
// dongjun

// 인스턴스 연산 프로퍼티 사용
print(goodjeon.selfIntroduction)
// 저는 Swift반 goodjeon입니다

print("제 한국나이는 \(goodjeon.koreanAge)살이고, 미국나이는 \(goodjeon.westernAge)살입니다.")
// 제 한국나이는 28살이고, 미국나이는 27살입니다.
```

* 응용
```swift
struct Money {
  var currencyRate: Double = 1100
  var dollar: Double = 0
  var won: Double {
    get {
        return dollar * currencyRate
    }
    set {
        dollar = newValue / currencyRate
    }
    // set 블럭에서 암시적 매개변수 newValue를 사용할 수 있음
  }
}

var moneyInMyPocket = Money()
moneyInMyPocket.won = 11000
print(moneyInMyPocket.won)
// 11000

moneyInMyPocket.dollar = 10
print(moneyInMyPocket.won)
// 11000  
```

* 지역변수와 전역변수
  * 저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역/전역 변수에도 모두 사용 가능
  ```swift
  var a: Int = 100
  var b: Int = 200
  var sum: Int {
      return a + b
  }
   
  print(sym) // 300
  ```
  
### 프로퍼티 감시자(Property Observer)
* 프로퍼티 감시자를 사용하면 프로퍼티 값이 변경될 때 원하는 동작을 수행하도록 도와주는 역할
* `willSet`과 `didSet`활용
  *  `willSet` : 값이 변경되기 직전에 호출, 암시적 매개변수 이름 `newValue`
  *  `didSet` : 값이 변경된 직후에 호출, 암시적 매개변수 이름 `oldValue`
* 함수, 메서드, 클로저, 타입 등 외부에 위치한 지역/전역 변수에도 모두 사용 가능
* 연산 프로퍼티에는 사용 불가

### 상속(Inheritance)
* 스위프트의 상속은 클래스, 프로토콜 등에서 가능하다.
* 열거형(enum), 구조체(struct)에는 상속이 불가능하다.
* 스위프트의 클래스는 단일상속으로, 다중상속을 지원하지 않는다.
* 구현 정의
```swift
class 이름: 상속받을 클래스명 {
  /* 구현부 */
}
```

* `final` 키워드를 사용하면 재정의(override)를 방지할 수 있다.
* `static` 키워드를 사용해 타입 메서드를 만들면 재정의가 불가하다.
* `class` 키워드를 사용해 타입 메서드를 만들면 재정의가 가능하다.
* `class` 앞에 `final`을 붙이면 `static` 키워드를 사용한 것과 동일하게 동작한다.
* `override` 키워드를 사용해 부모 클래스의 메서드를 재정의 할 수 있다.


* 예시
```swift
class Person {
    var name: String = ""
    
    func selfIntroduce() {
        print("저는 \(name)입니다")
    }
    
    // final 키워드를 사용하여 재정의를 방지할 수 있다.
    final func sayHello() {
        print("Hello")
    }
    
    // 타입 메서드
    // 재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    
    // 재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
    
    // 재정의 가능한 class 메서드라도
    // final 키워드를 사용하면 재정의 할 수 없다
    // 메서드 앞의 'static'과 'final class'는 똑같은 역할
    final class func finalClassMethod() {
        print("type method - fianl class")
    }
} 

class Student: Person {
    var major: String = ""
    
    // 부모 클래스에서 정의한 함수를 새롭게 동작하게 하기위해 'override' 사용
    override func selfIntroduce() {
       print("저는 \(name)이고, 전공은 \(major)입니다")
    }
    
    override class func classMethod() {
        print("overriden type method - class")
    }
    
    // static을 사용한 타입 메서드는 재정의 X
    override static func typeMethod() {   }
    
    // final 키워드를 사용한 메서드, 프로퍼티는 재정의 X
    // override func sayHello() { }
    // override class func finalClassMethod() {  }
}

let goodjeon: Person = Person()
let dongjun: Student = Student()

goodjeon.name = "goodjeon"
dongjun.name = "dongjun"

// dongjun은 Student클래스로 major를 추가해서 major를 지정해줄 수 있다.
dongjun.major = "Swift"

goodjeon.selfIntroduce()
// 저는 goodjeon입니다

dongjun.selfIntroduce()
// 저는 dongjun이고 전공은 Swift입니다

Person.classMethod()
// type method - class

Person.typeMethod()
// type method - static

Person.finalClassMethod()
// type method - final class 

Student.classMethod()
// overriden type method - class

Student.typeMethod()
// type method - static

Student.finalClassMethod()
// type method - final class
```


### 인스턴스의 생성과 소멸(init / deinit)
* 스위프트의 모든 인스턴스는 초기화와 동시에 **모든 프로퍼티**에 유효한 값이 할당되어 있어야 한다.
* 프로퍼티에 미리 기본값을 할당해두면 인스턴스가 생성됨과 동시에 초기값을 지니게 된다.
```swift
class PersonA {
    // 모든 저장 프로퍼티에 기본값 할당
    var name: String = "unknown"
    var age: Int = 0
    var nickName: String = "nick"
}

// 인스턴스 생성
let jason: PersonA = PersonA()

// 기본값이 인스턴스가 지녀야 할 값과 맞지 않다면
// 생성된 인스턴스의 프로퍼티에 각각 값 할당
jason.name = "jason"
jason.age = 30
jason.nickName = "j"
```
* 인스턴스 생성 : 이니셜라이저(init)
    * 프로퍼티 초기값을 지정하기 어려운 경우에는 이니셜라이저를 통해 인스턴스가 가져야 할 초기값을 전달
    ```swift
    class PersonB {
    var name: String
    var age: Int
    var nickName: String
    
      // 이니셜라이저
      init(name: String, age: Int, nickName: String) {
          self.name = name
          self.age = age
          self.nickName = nickName
      }
    }

    let hana: PersonB = PersonB(name: "dongjun", age: 20, nickName: "동준")
    ```
    * 프로퍼티의 초기값이 꼭 필요하지 않다면 **Optional**을 사용
    * Class 내부의 init을 사용할 때는 `convenience` 키워드 사용
    ```swift
    class PersonC {
        var name: String
        var age: Int
        var nickName: String?
    
        init(name: String, age: Int, nickName: String) {
            self.name = name
            self.age = age
            self.nickName = nickName
        }

      // 위와 동일한 기능 수행
      // convenience init(name: String, age: Int, nickName: String) {
      //       init(name: name, age: age)
      //       self.nickName = nickName
      //  }

        init(name: String, age: Int) {
            self.name = name
            self.age = age
        }
    }

    let jenny: PersonC = PersonC(name: "jenny", age: 10)
    let mike: PersonC = PersonC(name: "mike", age: 15, nickName: "m")
    ```
    * 암시적 추출 옵셔널은 인스턴스 사용에 꼭 필요하면서 초기값을 할당하고 싶지 않을 때 사용
    ```swift
    class Phone{
      var name: String
      var owner: PersonC!
      
      init(name:String) {
        self.name = name
      }
      
      func callOwner() {
        print("\(name)폰의 주인 \(owner.name)님은 자리로 와주세요")
      }
    }
    
    let iPhone11: Phone = Phone(name: "iPhone11")
    // 핸드폰은 주인이 수리를 맡겨서 주인이 없으면 안된다.
    iPhone11.owner = goodjeon
    iPhone11.callOwner()
    // iPhone11폰의 주인 goodjeon님은 자리로 와주세요
    ```
    * 실패 가능한 이니셜라이저
      * 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우에는 인스턴스의 생성을 실패할 수도 있다.
      * 인스턴스 생성에 실패하면 `nil`을 반환
      * 실패 가능한 이니셜라이저의 반환타입은 옵셔널 타입
      * `init?`을 사용
      ```swift
      class PersonD {
        var name: String
        var age: Int
        var nickName: String?

        init?(name: String, age: Int) {
            if (0...120).contains(age) == false {
                return nil
            }

            if name.characters.count == 0 {
                return nil
            }

            self.name = name
            self.age = age
          }
      }

      //let john: PersonD = PersonD(name: "john", age: 23)
      let john: PersonD? = PersonD(name: "john", age: 23)
      let joker: PersonD? = PersonD(name: "joker", age: 123)
      let batman: PersonD? = PersonD(name: "", age: 10)

      print(joker) // nil
      print(batman) // nil
      ```
    
* 인스턴스 소멸 : 디이니셜라이저(deinit)
  * 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출하며 그 때 해야할 일을 구현
  * 메모리에서 해제 시점은 **ARC(Automatic Reference Counting)** 규칙에 따라 결정
  * 참고 : [ARC문서](https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html)
  * 매개변수를 지닐 수 없음
  * 자동 호출로 직접 호출 불가
  * **클래스 타입**에만 구현 가능
  
