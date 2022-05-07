import UIKit

// Unicode
// 숫자만 입력 받아야 한다.
let inputValue = "5"

if inputValue >= "\u{30}" && inputValue <= "\u{39}" {
    print("숫자다")
}else{
    print("숫자가 아니다")
}


// 영어만 입력 받아야 한다.
"\u{41}"
"\u{7a}"


// String
let myName = "ki tae Park"

for character in myName {
    print(character)
}

// String 한줄씩 출력
let a = "ki\ntae\nPark"

let b =
"""
ki
tae
Park
"""
print(b)

// String 형태로 출력
let isOn = false
isOn.description

let myNum = 123
// myNum.description
// String(myNum)
// "my number is \(myNum)"


// 문자열 지정 출력
"my number is \(myNum)".last // 3
"my number is \(myNum)".dropLast() // 12
"my number is \(myNum)".dropFirst() // y~


// 정수와 소수점 분리
let num = 12.33
String(num).split(separator : ".") // "12", "33"
