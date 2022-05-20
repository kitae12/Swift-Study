import UIKit

// Function

let a = 10
let b = 20

/*
func plus(num1: Int, num2: Int) {
    print("sum = ", num1 + num2)
}

plus(num1: a, num2: b)
*/

func plus(_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2
}

func minus(_ num1: Int, _ num2: Int) -> Int {
    return num1 - num2
}

func multiply(_ num1: Int, _ num2: Int) -> Int {
    return num1 * num2
}


var inputButtonType = "*"

if inputButtonType == "+" {
    print("연산 결과", plus(a, b))
    
}else if inputButtonType == "-" {
    print("연산 결과", minus(a, b))
    
}else if inputButtonType == "*" {
    print("연산 결과", multiply(a, b))
}


func calc(result: (Int, Int) -> Int) {
    print("연산 결과", result(a, b))
}

if inputButtonType == "+" {
    calc(result: plus(_:_:))
    
}else if inputButtonType == "-" {
    calc(result: minus(_:_:))
    
}else if inputButtonType == "*" {
    calc(result: multiply(_:_:))
}
