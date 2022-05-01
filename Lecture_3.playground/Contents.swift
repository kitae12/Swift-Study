import UIKit

// 기초 연산자
// Basic Operators

// +, -, *, /, % - remainder Operator
// Swift 언어 특징
// 타입이 엄격, 강타입, type safe

let a: Int = 20
let b: Double = 30

//let c = a / b
let d = a + Int(b)

// %
// 홀수, 짝수
// Int 타입만 가능
if a % 2 == 0 {
    print("짝수")
} else {
    print("홀수")
}

// Double 타입
if b.truncatingRemainder(dividingBy: 2) == 0 {
    print("짝수")
} else {
    print("홀수")
}

var aa: Int = 21
let bb: Double = 33

aa = aa + 2
aa += 2


// 비교 연산자
// Comparision Operators

let e = 20
let f = 30

e == f
e != f
e > f
e < f
e >= f
e <= f
