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

// 축약 (한줄일 때 return 생략)
let myScore3 = { (a: Int) -> String in
    "\(a)점"
}

// 한줄일 때 String 변환 안해도 타입 추론하여 리턴
let myScore4 = { (a: Int) in
    "\(a)점"
}

let myScore5: (Int) -> String = { a in
    "\(a)점"
}

// in 생략
let myScore6: (Int) -> String = {
    "\($0)점"
}


// 조건 -> 찾는다 -> 입력한 글자로 시작하는 글자를 찾는다

let names = ["apple", "air", "brown", "red", "park"]

let containsSomeText: (String, String) -> Bool = {name, find in
    if name.contains(find) {
        return true
    }
    return false
}

let startSomeText: (String, String) -> Bool = {name, find in
    if name.first?.description == find {
        return true
    }
    return false
}

func find(findString: String, condition: (String, String) ->
    Bool) -> [String] {
    var newNames = [String]()
    
    for name in names {
        if condition(name, findString) {
            newNames.append(name)
        }
    }
        return newNames
}
    

// 조건 -> 찾는다 -> 특정한 글자가 포함된 것을 찾는다.

func someFind (find: String) -> [String] {
    var newNames = [String]()
    
    for name in names {
        if name.contains(find) {
            newNames.append(name)
        }
    }
    
    return newNames
}

someFind(find: "r")


find(findString: "a", condition: startSomeText)
find(findString: "a", condition: containsSomeText)

    
