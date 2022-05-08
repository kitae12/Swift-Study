import UIKit

// Collection Types
// Array, Dictionary, Set

// Array
var myNames = Array<String>() // [String]()
var myAges = [Int]()

myNames.append("Kim")
myNames.append("Lee")
myNames.append("Park")

myNames // Kim, Lee, Park
myNames[0] // Kim

// 인덱스 3번을 지정하는 경우 에러 방지 : 방어코드
let index = 3
if myNames.count > index {
    myNames[index]
}else{
    "인덱스 숫자를 확인"
}

// 인덱스 추가
// myNames.append(contentsOf: ["hi", "hello"])
myNames = myNames + ["hi", "hello"] // kim, Lee, Park, hi, hello

// 지정한 자릿수의 인덱스 삭제
myNames.remove(at: 1) // Lee 삭제

// 인덱스 중간에 값을 추가
myNames.insert("Na", at: 2) // Kim, Park, Na, hi, hello


// 순서대로 개별 출력
for name in myNames{
    print(name + "님")
}
// Kim님
// Park님 ...

// 인덱스 번호 + 내용
for (index, name) in myNames.enumerated(){
    print(index, name)
}
// 0 Kim
// 1 Park ...

