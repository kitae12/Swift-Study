import UIKit

// func와 유사
// closure - 이름이 없음

// function
func myScore(a:  Int) -> String {
    return "\(a)점"
}

let score = myScore(a: 40)
score


// closure
let myScore2 = { (a: Int) -> String in
    return "\(a)점"
}

myScore2(20)
