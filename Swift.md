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