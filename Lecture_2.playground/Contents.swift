import UIKit

// Optional

var myAge: Int? = 0


// 값이 없는 상태 체크 > 틀린 로직 (Swift 언어 스펙)
if myAge == 0 {
    // alert - 나이를 입력해 주세요.
}

// nil 사용
if myAge == nil {
    // alert - 나이를 입력해 주세요.
}

var myName: String? = "" // 빈 스트링

// 틀린 로직
if myName == "" {
    // 이름을 입력해 주세요.
}

// nil 사용
if myName == nil {
    // 이름 값이 없음.
}

var a: Int? = 10
var b: Int? = 20
var x: Int? = 100

//coalesce : ?? : 값이 없으면 0으로 대체
var c = (a ?? 0) + (b ?? 0)

// force unwrap : Optionals 오류 무시
// 무조건 값이 있다는 가정하에 사용
//var d = a! + b!

// Unwrapping
// if Statements
if a != nil {
    print(a!) // Optional(10)
}

// if let
if let hasNumber = a {
    print(hasNumber) // 10
}
    else {
        print("값을 입력해 주세요.")
}

// if var : 값을 변경할 때
if var hasNumbers = a {
    hasNumbers = hasNumbers * 2
    print(hasNumbers)
}

// guard let : 값 자체가 없다면 return 에서 로직 실행을 멈춤
func testFunc() {
    guard let hasNum1 = x else{
        return
    }
    print(hasNum1)
    print("end")
}

testFunc()
