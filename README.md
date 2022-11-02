# SwiftStudy

# <center>2022년 개인 KPI </center>

<p align='right'> 작성자 : 오픈서비스사업팀 양승은</p>

<p align='right'>작성일: 2022년 10월 28일</p>



### 목표

Swift 기초 문법 학습 



### 개요

스위프트 기초 문법 강좌 수강 및 실습을 통한 Swift 기초 문법을 학습한다.



### 학습 내용

* 이름짓기, 콘솔로그, 문자열 보간법 
* 상수와 변수
```상수 선언 키워드 let
변수 선언 키워드 var
let 이름: 타입 = 값
var 이름: 타입 = 값
값의 타입이 명확하다면 타입은 생략 가능
```
* 기본 데이터 타입
```
Int : 정수 타입
UInt : 양의 정수 타입
Float, Double : 실수 타입
Character, String : 문자 타입
```

* Any, AnyObject, nil
```
Any : Swift의 모든 타입을 지칭하는 키워드
AnyObject : 모든 클래스 타입을 지칭하는 프로토콜
nil : 없음을 의미하는 키워드```
```
* 컬렉션 타입
```
Array : 멤버가 순서(인덱스)를 가진 리스트 형태의 컬렉션 타입
        var integers: Array<Int> = Array<Int>()

Dictionary : 키와 값의 쌍으로 이루어진 컬렉션 타입
        var anyDictionary: Dictionary<String, Any> = [String: Any]()

Set : 순서가 없고, 멤버가 유일한 것을 보장하는 컬렉션 타입
        var integerSet: Set<Int> = Set<Int>()
```
* 함수 
```
func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
}
```
* 조건문
```
if-else
switch
```
* 반복문
```
for-in
while
repeat-while
```
* 옵셔널
```
Optional Binding - 옵셔널 바인딩 
    nil 체크 + 안전한 값 추출
    
    var myName: String? = "yagom"
    var yourName: String? = nil 
    if let name = myName, let friend = yourName { 
         print("\(name) and \(friend)") 
    } 
    yourName = "hana" 
    if let name = myName, let friend = yourName{ 
        print("\(name) and \(friend)") 
    } 

Force Unwrapping - 강제 추출

    func printName(_ name: String) { 
        print(name) 
    } 
    var myName: String? = "yagom" 
    printName(myName!) 
    myName = nil 
    print(myName!)  //런타임 오류 발생
    var yourName: String! = nil 
    printName(yourName) //nil 값이 전달되기 때문에 런타임 오류 발생
```
* 구조체
```
스위프트 대부분의 타입은 구조체로 이루어져 있으며 구조체는 값 타입이다

    struct 이름 {
        /* 구현부 */
    }
```
* 클래스
```
클래스는 참조 타입으로 타입이름은 대문자 카멜케이스를 사용하여 정의한다.

class 이름 {
	/* 구현부 */
}
```
* 열거형
```
enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의한다.
각 case는 소문자 카멜케이스로 정의
각 case는 그 자체가 고유의 값이다
각 케이스는 한 줄에 개별로도, 한 줄에 여러개도 정의할 수 있다.

    enum 이름 {
        case 이름1
        case 이름2
        case 이름3, 이름4, 이름5
        // ...
    }
```
* 값 타입과 참조 타입
```
열거형과 구조체는 값 타입이며, 클래스는 참조 타입으로 상속이 가능하지만 구조체와 열거형은 상속이 불가능하다.
    struct ValueType {
        var property = 1
    }

    class ReferenceType {
        var property = 1
    }
    
    // 첫 번째 구조체 인스턴스
    let firstStructInstance = ValueType()
    // 두 번째 구조체 인스턴스에 첫 번째 인스턴스 값 복사
    var secondStructInstance = firstStructInstance
    // 두 번째 구조체 인스턴스 프로퍼티 값 수정
    secondStructInstance.property = 2
```
* 클로저
```
기본 클로저 문법
    { (매개변수 목록) -> 반환타입 in
        실행 코드
    }

클로저의 사용
    // sum이라는 상수에 클로저를 할당
    let sum: (Int, Int) -> Int = { (a: Int, b: Int) in
        return a + b
    }

    let sumResult: Int = sum(1, 2)
    print(sumResult) // 3
```
* 프로퍼티
```
프로퍼티의 종류
    - 인스턴스 저장 프로퍼티
    - 타입 저장 프로퍼티
    - 인스턴스 연산 프로퍼티
    - 타입 연산 프로퍼티
    - 지연 저장 프로퍼티

정의와 사용
    프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있다. 
    다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있다. 
    연산 프로퍼티는 var로만 선언할 수 있으며 연산프로퍼티를 읽기전용으로는 구현할 수 있지만, 쓰기 전용으로는 구현할 수 없다. 
    읽기전용으로 구현하려면 get 블럭만 작성해주면 된다. 
    읽기전용은 get블럭을 생략할 수 으며, 읽기, 쓰기 모두 가능하게 하려면 get 블럭과 set블럭을 모두 구현해주면 된다.
    set 블럭에서 암시적 매개변수 newValue를 사용할 수 있다.
```
* 상속
```
스위프트의 상속은 클래스, 프로토콜 등에서 가능하다. 
열거형, 구조체는 상속이 불가능하며 스위프트는 다중상속을 지원하지 않는다.
```
* 인스턴스의 생성과 소멸
```
프로퍼티 초기값 
- 스위프트의 모든 인스턴스는 초기화와 동시에 모든 프로퍼티에 유효한 값이 할당되어 있어야 합하며 프로퍼티에 미리 기본값을 할당해두면 인스턴스가 생성됨과 동시에 초기값을 지니게 됩니다.

이니셜라이저 init
- 프로퍼티 기본값을 지정하기 어려운 경우에는 이니셜라이저 init을 통해 인스턴스가 가져야 할 초기값을 전달할 수 있다.

디이니셜라이저 deinit
- deinit은 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출된다. 인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있다. 
```
* 옵셔널 체이닝과 nil 병합 연산자
```
옵셔널 체이닝은 옵셔널의 내부의 내부의 내부로 옵셔널이 연결되어 있을 때 유용하게 활용할 수 있다. 매 번 nil 확인을 하지 않고 최종적으로 원하는 값이 있는지 없는지 확인할 수 있다.
```
* 타입캐스팅
```
스위프트의 타입캐스팅은 인스턴스의 타입을 확인 하는 용도 또는 클래스의 인스턴스를 부모 혹은 자식 클래스의 타입으로 사용할 수 있는지 확인 하는 용도로 사용한다. 
is, as를 사용
```
* assert와 guard
```
애플리케이션이 동작 도중에 생성하는 다양한 연산 결과값을 동적으로 확인하고 안전하게 처리할 수 있도록 확인하고 빠르게 처리할 수 있다.

assert(_:_:file:line:) 함수를 사용
guard를 사용하여 잘못된 값의 전달 시 특정 실행구문을 빠르게 종료
```
* 프로토콜
```
protocol 키워드를 사용하여 정의한다.

protocol 프로토콜 이름 {
    /* 정의부 */
}
```
* 익스텐션
```
익스텐션은 구조체, 클래스, 열거형, 프로토콜 타입에 새로운 __기능을 추가__할 수 있는 기능이다.
기능을 추가하려는 타입의 구현된 소스 코드를 알지 못하거나 볼 수 없다 해도, 타입만 알고 있다면 그 타입의 기능을 확장할 수도 있다.

스위프트의 익스텐션이 타입에 추가할 수 있는 기능
- 연산 타입 프로퍼티 / 연산 인스턴스 프로퍼티
- 타입 메서드 / 인스턴스 메서드
- 이니셜라이저
- 서브스크립트
- 중첩 타입
- 특정 프로토콜을 준수할 수 있도록 기능 추가

익스텐션은 타입에 새로운 기능을 추가할 수는 있지만, 기존에 존재하는 기능을 재정의할 수는 없다.
```
* 오류처리
```
Error 프로토콜과 (주로)열거형을 통해서 오류를 표현한다

enum 오류종류이름: Error {
    case 종류1
    case 종류2
    case 종류3
    //...
}
```
* 고차함수
```
map
filter
reduce
```

### Swift UI 실습
* Random Number 맞추기 게임
* UIKit * Storyboard
* Adding UI components on the storyboard
* Adding Slider and HIT Button
* Receiving value changed event from slider
* Getting current value of slider
* Event driven programming

