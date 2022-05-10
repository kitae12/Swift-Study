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


// Set

var names = Set<String>()
names.insert("Kim")
names.insert("Lee")
names.insert("Park")
names.insert("Park") // 값이 중첩되지 않음

var num1: Set = [1, 2, 3, 4, 5]

var num2: Set = [4, 5, 6, 7, 8]

// 교집합
num1.intersection(num2)

// 합집합
num1.union(num2)

// 합집합 - 교집합 (대칭차집합)
num1.symmetricDifference(num2)

// 여집합
num1.subtracting(num2)


